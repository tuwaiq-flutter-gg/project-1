import 'dart:io';
import 'main.dart';
import 'search.dart';
import 'Editing.dart';

//craeting Variable
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
      book_title: "Clean Code     ",
      author: "Rpbert Cecil Martin",
      price: 50,
      quantity: 5),
  Book(
      book_title: "Zero to One    ",
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
  getID() {
    return this.book_id;
  }

  getTitle() {
    return book_title;
  }

  getAuthor() {
    return author;
  }

  getPrice() {
    return price;
  }

  getQuantity() {
    return quantity;
  }

  setTitle(String title) {
    this.book_title = title;
  }

  setAuthor(String author) {
    this.author = author;
  }

  setPrice(double prise) {
    this.price = price;
  }

  setQuantity(int quantity) {
    this.quantity = quantity;
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

  static testStatic() {}
  @override
  viewInformation() {
    print(
        " Book information : \n The ID: \"$book_id\"\tThe Title: \"$book_title\"\tThe author: \"$author\"\tThe price: \"$price\"\tThe quantity: \"$quantity\" ");
  }
}

add() {
  String? title;
  String? author;
  double? price;
  int quantity = 0;
  bool adding = true;

  while (adding) {
    print("Enter Book Title:");
    title = stdin.readLineSync();
    if (title != "") {
      adding = false;
    }
  }
  adding = true;
  while (adding) {
    print("Enter Book Author:");
    author = stdin.readLineSync()!;
    if (author != "") {
      adding = false;
    }
  }
  adding = true;
  while (adding) {
    print("Enter Book Price:");
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
  print("Nice you have added the Book successfully");
  print("--------------------------------------");
}

delete() {
  bool deleting = true;
  int deleteID;
  String deleteMessage = "Enter Book ID To delet it ";
  while (deleting) {
    print(deleteMessage);
    deleteID = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].getID();
      if (x == deleteID) {
        Books.remove(Books[i]);
        deleting = false;
        print("You deleted the Book with ID $x");
        print("--------------------------------------");
      }
      deleteMessage = "Re enter a Valid ID";
    }
  }
}

deleteByID(int ID) {
  for (int i = 0; i < Books.length; i++) {
    int x = Books[i].getID();
    if (x == ID) {
      Books.remove(Books[i]);
      print("The Book has been removed successfully");
      print("--------------------------------------");
    }
  }
}

viewLibrary() {
  print("The List in Your Library");
  print("--------------------------------------");
  for (int i = 0; i < Books.length; i++) {
    print(
        "Book ${i + 1} : \n The ID: ${Books[i].getID()}\tThe Title: ${Books[i].getTitle()}\tThe author name: ${Books[i].getAuthor()}\t The price: ${Books[i].getPrice()}\t The quantity: ${Books[i].getQuantity()}");
  }
  print("--------------------------------------");
}
