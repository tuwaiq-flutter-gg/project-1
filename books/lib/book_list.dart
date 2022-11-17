import 'dart:io';
import 'package:collection/collection.dart';
import 'package:books/book.dart';

class BookList {
  static List<Book> books = [];
  static int lastID = 0;
  static viewInformation() {
    for (var element in books) {
      print(element);
    }
  }

  static add(
      {required String title,
      String? author,
      required double price,
      required int quantity}) {
    lastID++;
    Book book = Book(
        book_id: lastID,
        book_title: title,
        author: author,
        price: price,
        quantity: quantity);
    books.add(book);
  }

  static edit() {
    BookList.viewInformation();
    int? bookID;
    Book? book;
    do {
      print("Enter a valid Book ID : ");
      String? bookIDString = stdin.readLineSync();
      if (bookIDString != null) {
        bookID = int.tryParse(bookIDString);
      }
      if (bookID != null) {
        book = books.firstWhereOrNull((element) => element.book_id == bookID);
      }
    } while (book == null);
    do {
      print("chose a valid number (1-4) to change");
      print("1 - Title");
      print("2 - Author");
      print("3 - Price");
      print("4 - Quantity");
      String? editChoice = stdin.readLineSync();
      String? newString;
      switch (editChoice) {
        case "1":
          while (newString == null) {
            stdout.write("Enter a valid New Title :");
            newString = stdin.readLineSync();
          }
          book.editTitle(newString);
          break;
        case "2":
          while (newString == null) {
            stdout.write("Enter a valid New Title :");
            newString = stdin.readLineSync();
          }
          book.editTitle(newString);
          break;
        case "3":
          while (newString == null) {
            stdout.write("Enter a valid New Title :");
            newString = stdin.readLineSync();
          }
          book.editTitle(newString);
          break;
        case "4":
          while (newString == null) {
            stdout.write("Enter a valid New Title :");
            newString = stdin.readLineSync();
          }
          book.editTitle(newString);
          break;
        default:
          break;
      }
    } while (condition);
  }

  static delete(int id) {
    if (books.firstWhereOrNull((element) => element.book_id == id) == null) {
      print("object");
    } else {
      books.removeWhere((element) => element.book_id == id);
      print("Book Deleted");
    }
  }
}
