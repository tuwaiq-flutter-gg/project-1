import 'dart:ffi';
import 'Dart:io';

void main() {
  //load all the books
  Book book1 = Book(
      book_title: "Start with why",
      author: "Simon Sink",
      price: 80.0,
      quantity: 13);

 Book book22 = Book(
      book_title: "sap",
      author: "Simon Sink",
      price: 80.0,
      quantity: 13);

  Book book2 = Book(
      book_title: "But how do it know",
      author: "J. Clark Scott",
      price: 59.9,
      quantity: 22);

  Book book3 = Book(
      book_title: "Clean Code",
      author: "Robert Cecil Martin",
      price: 50.0,
      quantity: 5);

  Book book4 = Book(
      book_title: "Zero to One",
      author: "Peter Thiel",
      price: 45.0,
      quantity: 12);

  Book book5 = Book(
      book_title: "You don't know JS",
      author: "Kyle Simpson",
      price: 39.9,
      quantity: 9);

  bool contniue = true;

  do {
    print("\n1-Add a book" +
        "\n2-Edit a book information" +
        "\n3-Sell a book" +
        "\n4-Delete a book" +
        "\n5-View a book information" +
        "\n6-Search for a book" +
        "\n7-Exit" +
        "\nEnter the number of your option:\n");
    String? input = stdin.readLineSync();
    int option = int.parse(input!);

    switch (option) {
      case 1:
        {
          //add a new book
          print("Enter the book's title:");
          String? bookTitle = stdin.readLineSync();
          print("Enter the book's author:");
          String? bookAuthor = stdin.readLineSync();
          print("Enter the book's price:");
          String? bookPrice = stdin.readLineSync();
          print("Enter the book's quantity:");
          String? bookQuantity = stdin.readLineSync();

          Book temp = Book(
              book_title: bookTitle,
              author: bookAuthor,
              price: double.parse(bookPrice!),
              quantity: int.parse(bookQuantity!));
          break;
        }
      case 2:
        {
          // to specify the book

          print("Enter the book's id that you want to edit its information :");
          String? bookID = stdin.readLineSync();

// choose what value should be updated
          print("\n What you wanna update?" +
              "\n1-Book's title" +
              "\n2-Book's author" +
              "\n3-Book's price " +
              "\n4-Exit" +
              "\nEnter the number of your option:\n");

          String? input = stdin.readLineSync();
          int option = int.parse(input!);
          switch (option) {
            case 1:
              {
                //Update the book's title
                print("Enter the updated book's title:");
                String? bookTitle = stdin.readLineSync();
                List<Book>? temp = Book.search(val: bookID);

                if (temp != null) {
                  temp[0].edit(title: bookTitle);
                  print(temp[0].viewInformation());
                }

                break;
              }
            case 2:
              {
                //Update the book's author

                print("Enter the updated book's author:");
                String? bookAuthor = stdin.readLineSync();
                List? temp = Book.search(val: bookID);

                   if (temp != null) {

                  temp[0].edit(author: bookAuthor);
                  print(temp[0].viewInformation());
                   }
                break;
              }
            case 3:
              {
                //Update the book's price

                print("Enter the updated book's price:");
                String? bookPrice = stdin.readLineSync();
                List? temp = Book.search(val: bookID);

                if (temp != null) {
                  temp[0].edit(price: double.parse(bookPrice!));
                  print(temp[0].viewInformation());
                }

                break;
              }

            case 4:
              //Exit that menu
              break;

            default:
              print("invalid option!"); // any invalid value
          }

          break;
        }

      case 3:
        {
          //sell a book
          print("Enter the book's id that you want to sell:");
          String? bookID = stdin.readLineSync();

          
          List? temp = Book.search(val: bookID);

          if (temp != null) {
            print("Enter the book's quantity that you need:");
            String? quant = stdin.readLineSync();
            temp[0].sell(q: int.parse(quant!));
          }
          break;
        }

      case 4:
        {
          //delete a book by its ID
          print("Enter the book's id that you want to delete:");
          String? bookID = stdin.readLineSync();
          Book.deleteBookByID(id: int.parse(bookID!));
          break;
        }
      case 5:
        {
          //view a book information by its ID
          print("Enter the book's id that you want to view its information");
          String? bookID = stdin.readLineSync();
            List? temp = Book.search(val: bookID);
          if (temp != null) {
            print(temp[0].viewInformation());
          }

          break;
        }
      case 6:
        {
          // search for a specific book
          print(
              "Enter the book's id or the book's title or the book's author that you want to find:");
          String? val = stdin.readLineSync();
          List? temp = Book.search(val: val);
          if (temp != null) {

            for(var i=0; i<temp.length;i++){

              print(temp[i].viewInformation());
            }

            // print(temp.viewInformation());
          }
          break;
        }
      case 7:
        // to exit the menu
        contniue = false;
        break;

      default:
        print("invalid option!"); // any invalid value
    } // end switch
  } while (contniue);
}

abstract class BookDef {
//-------------- Static methods -----------

  static Book? search({String? val}) {}
  static deleteBookByID({int? id}) {}
  static printAllBooks() {}

  //-------------- Non-Static methods -----------

  String? viewInformation();
  edit({String? title, author, double? price});
  sell({required int? q});
}

class Book extends BookDef {
  static int count = 0;
  static List<Book> books = []; // List that contains all the books

  int? book_id;
  String? book_title;
  String? author;
  double? price;
  int? quantity;

  Book({this.author, this.book_title, this.price, this.quantity}) {
    // constructor to add new book object
    book_id = ++count;
    books.add(this); // Add the new book object to the books list
    print("The book is added successfully");
  }

//-------------- Search method -----------


// return "The book ID is ${book_id} and its name ${book_title} and it was written by ${author} \n " +
//         "and its price is ${price} and its quantity is ${quantity}";

  static List<Book>? search({String? val}) {
        
     List<Book> booksList=[];

    // checking the type to decide search by id or (aithor and title)

    if(int.tryParse(val!)==null){

     

    for (int i = 0; i < books.length; i++) {
      // go through the whole list to find a match for specific author
      String? str = books[i].viewInformation();
      str = str!.substring(str.indexOf('and'), str.indexOf('\n'));
      if (str.contains(val)){
        booksList.add(books[i]);
      }

    }
        // if found, return the books Lis

      return booksList;

    }else {

      for (int i = 0; i < books.length; i++) {
      // go through the whole list to find a match for specific author
      String? str = books[i].viewInformation();
      str = str!.substring(0, str.indexOf('and'));
           

      if (str.contains("$val")){

      booksList.add(books[i]);
        return booksList; // if found, return the book object
    }
    }
    }
   
    print("The desired book wasn't found");
    return null; // if not found, a null will be returned
  }

//-------------- Modification methods -----------

  static deleteBookByID({int? id}) {
    // delete a specfic book by its id

    if (id != null) {
      // insure that the id isn't null

      if (search(val: id.toString())![0] != null) {
        // insure that there is a book with this id

        books.remove(search(val: id.toString())![0]); // delete it from the list

        print("the book was removed sccessfully");
      }
    } else {
      print("The book wasn't found");
    }
  }

  edit({String? title, author, double? price}) {
    //method to edit either the book title, author, or price.

    if (title != null) {
      this.book_title = title;
    } else if (author != null) {
      this.author = author;
    } else if (price != null) {
      this.price = price;
    }
  }

  sell({required int? q}) {
    if (this.quantity! >= q!) {
      // if there isn't enough quantity
      quantity = quantity! - q;

      print("you have purchased $q copies of $book_title for ${price! * q} ");
    } else {
      print("Sorry! we are out of stock");
    }
  }

//-------------- Display methods -----------

  String? viewInformation() {
    //displays all the information for a specific book

    return "The book ID is ${book_id} and its name ${book_title} and it was written by ${author} \n " +
        "and its price is ${price} and its quantity is ${quantity}";
  }

  static printAllBooks() {
    //displays all the information for all books

    for (int i = 0; i < Book.books.length; i++) {
      print(Book.books[i].viewInformation());
    }
  }
}
