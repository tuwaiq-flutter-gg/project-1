import 'dart:io';
import 'dart:math';

List<Book> Books = [
  Book(
      book_title: "Start With Why",
      author: "Simon Sink",
      price: 80,
      quantity: 13),
  Book(
      book_title: "But how do it know",
      author: "J.Clark Scott",
      price: 59.9,
      quantity: 22),
  Book(
      book_title: "Clean Code",
      author: "Rpbert Cecil Martin",
      price: 50,
      quantity: 5),
  Book(
      book_title: "Zero to One",
      author: "Peter Thiel",
      price: 45,
      quantity: 12),
  Book(
      book_title: "You dont know JS",
      author: "Kyle Simpson",
      price: 39.9,
      quantity: 9)
];
int counter = 1;
List cart = [];
void main() {
  print("Welcom to pur library");
  //add();
  //search();
  // print(Books.length);
  // delete();
  // print(Books.length);
  print(cart.length);
  buying();
  print(cart.length);
}

abstract class Library {
  edit();
  viewInformation();
  sell();
}

class Book extends Library {
  int book_id = 0;
  String? book_title;
  String? author;
  double? price;
  late int quantity;
  Book(
      {required this.book_title,
      required this.author,
      required this.price,
      required this.quantity}) {
    this.book_id = counter;
    counter++;
  }

  @override
  @override
  @override
  edit() {}

  @override // No need for its already implmented in buying function
  bool sell() {
    bool sellable = false;
    if (quantity > 0) {
      quantity--;
      //print("Thank you for your Shopping");
      sellable == true;
    } else {
      sellable = false;
      print("Sorry! we are out of stock");
    }
    return sellable;
  }

  @override
  viewInformation() {
    print(
        "The ID is $book_id\tThe Title is $book_title\tThe author $author\tThe price is $price\tThe quantity is $quantity ");
  }
}

add() {
  String? title;
  String? author;
  double? price;
  int quantity = 0;
  bool adding = true;

  while (adding) {
    print("Enter Book Title");
    title = stdin.readLineSync();
    if (title != "") {
      adding = false;
    }
  }
  adding = true;
  while (adding) {
    print("Enter Book Author");
    author = stdin.readLineSync()!;
    if (author != "") {
      adding = false;
    }
  }
  adding = true;
  while (adding) {
    print("Enter Book Price");
    price = double.parse(stdin.readLineSync()!);
    if (price > 0) {
      adding = false;
    }
  }
  adding = true;
  while (adding) {
    print("Enter Book Quantity");
    quantity = int.parse(stdin.readLineSync()!);
    if (quantity > 0) {
      adding = false;
    }
  }
  Books.add(Book(
      book_title: title, author: author, price: price, quantity: quantity));
}

look(int search) {
  var booksearch;
  bool se = true;
  if (search == 1) {
    while (se) {
      print("Enter Book ID");
      booksearch = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < Books.length; i++) {
        var item = Books[i].book_id;
        if (item == booksearch) {
          Books[i].viewInformation();
          se = false;
        }
      }
    }
  } else if (search == 2) {
    while (se) {
      print("Enter Book Title");
      booksearch = stdin.readLineSync()!;
      for (int i = 0; i < Books.length; i++) {
        var item = Books[i].book_title;
        if (item!.contains(booksearch)) {
          // if (item == booksearch) for exact Match
          Books[i].viewInformation();
          se = false;
        }
      }
    }
  } else if (search == 3) {
    while (se) {
      print("Enter Book Autor");
      booksearch = stdin.readLineSync()!;
      for (int i = 0; i < Books.length; i++) {
        var item = Books[i].author;
        if (item!.contains(booksearch)) {
          // // if (item == booksearch) for exact Match
          Books[i].viewInformation();
          se = false;
        }
      }
    }
  }
}

search() {
  bool searching = true;
  int search;
  while (searching) {
    print("How do you want to Search\n1 By ID\n2 By Title \n3 By Author");
    search = int.parse(stdin.readLineSync()!);
    if (search == 1 || search == 2 || search == 3 || search == 4) {
      look(search);
      searching = false;
    }
  }
}

delete() {
  bool deleting = true;
  int deleteID;
  String deleteMessage = "Enter Book ID for deleting it ";
  while (deleting) {
    print(deleteMessage);
    deleteID = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].book_id;
      if (x == deleteID) {
        Books.remove(Books[i]);
        deleting = false;
      }
      deleteMessage = "Re enter a Valid ID";
    }
  }
}

buying() {
  bool shopping = true;
  int BookID;
  int q = 0;
  String deleteMessage = "Enter Book ID to put it in cart";
  while (shopping) {
    print(deleteMessage);
    BookID = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].book_id;
      // print(x);
      if (x == BookID) {
        if (Books[i].quantity > 0) {
          //Books[i].sell() did not work tried another way
          Books[i].quantity -= 1;
          cart.add(Books[i]);
          q++;
          // print(x);
        } else {
          print("Sorry! we are out of stock");
        }
      }
    }
    if (q > 0) {
      print("enter 0 to finish shopping or anyNumber to choose another Book");
      BookID = int.parse(stdin.readLineSync()!);
      if (BookID == 0) {
        shopping = false;
      }
    } else {
      print("Wrong Book ID");
    }
  }
  viewCart();
}

viewCart() {
  print("Your Shooping Cart has these items");
  double total = 0;
  for (int i = 0; i < cart.length; i++) {
    total += cart[i].price!;
    print(
        "Book ID ${cart[i].book_id} Book Title ${cart[i].book_title} the price = ${cart[i].price}");
  }
  print("Total = $total");
}
