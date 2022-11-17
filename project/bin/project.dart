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

  Books[0].delete(1);
}

abstract class Library {
  add();
  delete(int deletedID);
  edit();
  viewInformation();
  search();
  sell();
}

class Book extends Library {
  int book_id = 0;
  String? book_title;
  String? author;
  double? price;
  late int quantity;
  Book({this.book_title, this.author, this.price, required this.quantity}) {
    this.book_id = counter;
    counter++;
  }

  @override
  add() {}

  @override
  delete(int deletedID) {
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].book_id;
      if (x == deletedID) {
        Books.remove(Books[i]);
      }
    }
  }

  @override
  edit() {}

  @override
  search() {}

  @override
  sell() {
    if (quantity > 0) {
      quantity--;
      print("Thank you for your Shopping");
    } else {
      print("Sorry! we are out of stock");
    }
  }

  @override
  viewInformation() {}
}
