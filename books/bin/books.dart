import 'dart:io';

import 'package:books/book.dart';
import 'package:books/book_list.dart';
import 'package:books/functions.dart';

void main(List<String> arguments) {
  Book b1 = Book(
      book_id: 1,
      book_title: "Start with why",
      author: "Simon Sink",
      price: 80.0,
      quantity: 13);
  BookList.books.add(b1);

  Book b2 = Book(
      book_id: 2,
      book_title: "But how do it know",
      author: "J. Clark Scott",
      price: 59.9,
      quantity: 22);
  BookList.books.add(b2);

  Book b3 = Book(
      book_id: 3,
      book_title: "Clean Code” Robert",
      author: "Cecil Martin",
      price: 50.0,
      quantity: 5);
  BookList.books.add(b3);

  Book b4 = Book(
      book_id: 4,
      book_title: " Zero to One",
      author: "Peter Thiel ",
      price: 54.0,
      quantity: 12);
  BookList.books.add(b4);

  Book b5 = Book(
      book_id: 5,
      book_title: "You don't know",
      author: "JS Kyle Simpson",
      price: 39.9,
      quantity: 9);
  BookList.books.add(b5);

  BookList.lastID = 5;

  //BookList.viewAllBooks();
  String? readLine;

  while (readLine != "^E") {
    print("Enter a valid number (1-6) or [^E] to Exit : ");
    print("1 - View all books ");
    print("2 - Buy a book");
    print("3 - Add a book");
    print("4 - Edit a book");
    print("5 - Delete a book");
    print("6 - Search for a book");

    readLine = stdin.readLineSync();
    switch (readLine) {
      case "1":
        viewAllBooks();
        break;
      case "2":
        sell();
        break;
      case "3":
        add();
        break;
      case "4":
        edit();
        break;
      case "5":
        delete();
        break;
      case "6":
        search();
        break;
      default:
        break;
    }
  }
}
