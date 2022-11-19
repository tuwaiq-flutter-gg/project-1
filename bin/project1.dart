//1.Import Dart:io to take input from the console.

import 'dart:io';

main() {
  Info info = Info();
  Sell sellBook=Sell();
  bool repeatMenu = true;
  print("==========Log in page==========");
  print("Enter the the number of the list:");
  print("1.Admin \n2.Buyer \n3.Exit");
    read1(int menu1) {
      if(menu1==1){
         do {
    print("==========Main Menu==========");
    print("Enter the number of the menu:");
    print("1.Add \n2.Edit \n3.Delete \n4.view Information \n5.Search \n6.Exit");
    read(int menu) {
      switch (menu) {
        case 1:
          {
            info.Add();
            break;
          }
        case 2:
          {
            info.Edit();
            break;
          }
        case 3:
          {
            info.Delete();
            break;
          }
        case 4:
          {
            print("==========Library==========");
            print(info.myListBook.join("\n"));
            print("==========Library==========");
            break;
          }
        case 5: info.Search();
          {
            break;
          }
        case 6:
          {
            exit(6);
          }
        default:
          {
            print("should be a number between 1-6");
            break;
          }
      }
    }
    int? menu = int.parse(stdin.readLineSync()!);
    read(menu);
  } while (repeatMenu);
      }else if(menu1==2){
        sellBook.Selling();
      }else if(menu1==3){
        exit(3);
      }
      else{
        print("should be a number between 1-3");
      }
    }

    int? menu1 = int.parse(stdin.readLineSync()!);
    read1(menu1);


 
  }


////////////////////////////////////////////Classes////////////////////////////////////////////
abstract class LibraryBook {
  Edit();
}

class Info extends LibraryBook {
  List myListBook = [
    BooksRequirments(
        book_id: 1,
        book_title: "Start with why",
        author: "Simon Sink",
        price: 80.0,
        quantity: 13),
    BooksRequirments(
        book_id: 2,
        book_title: "But how do it know",
        author: "J. Clark Scott",
        price: 59.9,
        quantity: 22),
    BooksRequirments(
        book_id: 3,
        book_title: "Clean Code",
        author: "Robert Cecil Martin",
        price: 50.0,
        quantity: 5),
    BooksRequirments(
        book_id: 4,
        book_title: "Zero to One",
        author: "Peter Thiel",
        price: 45.0,
        quantity: 12),
    BooksRequirments(
        book_id: 5,
        book_title: "You don't know JS",
        author: "Kyle Simpson",
        price: 39.9,
        quantity: 9),
  ];
  @override
  Edit() { 
    print("==========Edit Menu==========");
    print("Enter the ID of the book to edit it:");
    int editInput = int.parse(stdin.readLineSync()!);
    print("Enter the new Title:");
    String? newTitle = stdin.readLineSync();
    print("Enter the new Author:");
    String? newAuthor = stdin.readLineSync();
    print("Enter the new Price:");
    int? newPrice = int.parse(stdin.readLineSync()!);
    print("Enter the new Quantity:");
    int? newQuantity = int.parse(stdin.readLineSync()!);
    myListBook[editInput - 1] = BooksRequirments(
        book_id: editInput,
        book_title: newTitle,
        author: newAuthor,
        price: newPrice,
        quantity: newQuantity);
    print(
        "You've editted the book successfully, view information to make sure!.");
  }

  Add() {
    print("==========Add Menu==========");
    int book_id = 5;
    book_id = book_id + 1;
    print("Enter the title of book:");
    String? inp1 = stdin.readLineSync();
    print("Enter the author of book:");
    String? inp2 = stdin.readLineSync();
    print("Enter the price of book:");
    num inp3 = double.parse(stdin.readLineSync()!);
    print("Enter the quantity of book:");
    int inp4 = int.parse(stdin.readLineSync()!);
    print("You've added a new book.");
    myListBook.add(BooksRequirments(
        book_id: book_id,
        book_title: inp1,
        author: inp2,
        price: inp3,
        quantity: inp4));
  }

  Delete() {
    print("==========Delete==========");
    print("Enter the ID of the book to remove it:");
    int inp5 = int.parse(stdin.readLineSync()!);
    myListBook.removeAt(inp5 - 1);
  }

  Search() {
 bool repeatMenu=true;
 print("==========Search==========");
 print("You can search for the book by:");
   print("1.Book ID \n2.Title of the book  \n3.Author name \n4.Exit");
      int? smenu = int.parse(stdin.readLineSync()!);
       if (smenu==1) {
          print("Enter the ID of the book you need to search:");
          int inp4 = int.parse(stdin.readLineSync()!);
          var display= myListBook.firstWhere((id)=>id.book_id==inp4);
          print("(((The book you are looking for is:))) \n((($display)))");
          }else if(smenu==2){//title
          print("Enter the Title of the book you need to search:");
          String? inp5 = stdin.readLineSync();
          var display= myListBook.firstWhere((title)=>title.book_title==inp5);
          print("(((The book you are looking for is:))) \n((($display)))");
          }else if(smenu==3){//author
          print("Enter the Author of the book you need to search:");
          String? inp6 = stdin.readLineSync();
          var display= myListBook.firstWhere((author)=>author.author==inp6);
          print("(((The book you are looking for is:))) \n((($display)))");
          }else if(smenu==4){//exit
          exit(4);
          }else{
          print("should be a number between 1-4");
          }
   } } 

class BooksRequirments {
  int? book_id = 0;
  String? book_title;
  late String? author;
  num? price;
  int? quantity;
  BooksRequirments(
      {this.book_id, this.book_title, this.author, this.price, this.quantity});

  String toString() {
    return "ID:$book_id, Book Title:$book_title, Author:$author, Price:$price, Quantity:$quantity";
  }
}

class Sell extends Info{
  var Price;

  Selling (){
        print("==========Shop==========");
        print("All the books we have:");
        print(myListBook.join("\n"));
        print("Enter the ID of the book you need to buy:");
        int inp5 = int.parse(stdin.readLineSync()!);
        print("How many copies do you want?");
        int peces = int.parse(stdin.readLineSync()!);
        var display= myListBook.firstWhere((id)=>id.book_id==inp5);
        var newprice= (display.price!)*peces;
        var newquantity=(display.quantity)-peces;
        if(newquantity! < 0){
          print("Sorry! we are out of stock");
        }else {
        print("You've seccessfully bought $peces copies of: \n((($display)))");
        print("the total Price is= $newprice");
        print("The new quantity of this book is: $newquantity");
        }

  }

}