import 'dart:io';
import 'package:collection/collection.dart';
import 'package:books/book.dart';

class BookList {
  static List<Book> books = [];
  static int lastID = 0;
  static viewAllBooks() {
    print(
        '|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
    if (books.isNotEmpty) {
      books.forEach((element) {
        element.view();
      });
    } else {
      print("No Books Found".padLeft(45));
    }
  }

  static add() {
    String? readLineString;
    do {
      String? titleReadLineString;
      while (titleReadLineString == null || titleReadLineString.isEmpty) {
        stdout.write("Enter a valid Title : ");
        titleReadLineString = stdin.readLineSync();
        if (titleReadLineString != null) {
          titleReadLineString = titleReadLineString.trim();
        }
      }
      String? authorReadLineString;
      while (authorReadLineString == null || authorReadLineString.isEmpty) {
        stdout.write("Enter a valid Author : ");
        authorReadLineString = stdin.readLineSync();
        if (authorReadLineString != null) {
          authorReadLineString = authorReadLineString.trim();
        }
      }
      String? priceReadLineString;
      double? price;
      while (price == null) {
        stdout.write("Enter a valid Price : ");
        priceReadLineString = stdin.readLineSync();
        if (priceReadLineString != null) {
          priceReadLineString = priceReadLineString.trim();
          price = double.tryParse(priceReadLineString);
        }
      }
      String? quantityReadLineString;
      int? quantity;
      while (quantity == null) {
        stdout.write("Enter a valid Quantity : ");
        quantityReadLineString = stdin.readLineSync();
        if (quantityReadLineString != null) {
          quantityReadLineString = quantityReadLineString.trim();
          quantity = int.tryParse(quantityReadLineString);
        }
      }
      lastID++;
      Book book = Book(
          book_id: lastID,
          book_title: titleReadLineString,
          author: authorReadLineString,
          price: price,
          quantity: quantity);
      books.add(book);

      readLineString = null;
      print("Do you want to Add another Book [Y] for Yes or [N] for No : ");
      while (readLineString != "Y" && readLineString != "N") {
        readLineString = stdin.readLineSync();
        if (readLineString != null) {
          readLineString = readLineString.trim();
        }
      }
    } while (readLineString != "N");
  }

  static edit() {
    String? readLineString;
    int? bookID;
    Book? book;
    do {
      BookList.viewAllBooks();
      print("Enter a valid Book ID to Edit or [E] to Exit : ");
      readLineString = stdin.readLineSync();
      if (readLineString != null) {
        readLineString = readLineString.trim();
        bookID = int.tryParse(readLineString);
      }
      if (bookID != null) {
        book = books.firstWhereOrNull((element) => element.book_id == bookID);
      }

      while (readLineString != "E" && readLineString != "C" && book != null) {
        print("The Book you choose is :");
        print(
            '|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
        book.view();
        print(
            "Enter a valid number (1-4) to Edit the following, [C] to Choose another book or [E] to Exit :");
        print("1 - Title");
        print("2 - Author");
        print("3 - Price");
        print("4 - Quantity");
        readLineString = stdin.readLineSync();
        if (readLineString != null) {
          readLineString = readLineString.trim();
        }
        String? switchReadLineString;
        switch (readLineString) {
          case "1":
            while (
                switchReadLineString == null || switchReadLineString.isEmpty) {
              stdout.write("Enter a valid New Title (${book.book_title}) : ");
              switchReadLineString = stdin.readLineSync();
              if (switchReadLineString != null) {
                switchReadLineString = switchReadLineString.trim();
              }
            }
            book.book_title = switchReadLineString;
            break;
          case "2":
            while (
                switchReadLineString == null || switchReadLineString.isEmpty) {
              stdout.write("Enter a valid New Author (${book.author}) : ");
              switchReadLineString = stdin.readLineSync();
              if (switchReadLineString != null) {
                switchReadLineString = switchReadLineString.trim();
              }
            }
            book.author = switchReadLineString;
            break;
          case "3":
            double? price;
            while (price == null) {
              stdout.write("Enter a valid New Price (${book.price}) :");
              switchReadLineString = stdin.readLineSync();
              if (switchReadLineString != null) {
                switchReadLineString = switchReadLineString.trim();
                price = double.tryParse(switchReadLineString);
              }
            }
            book.price = price;
            break;
          case "4":
            int? quantity;
            while (quantity == null) {
              stdout.write("Enter a valid New Quantity (${book.quantity}) : ");
              switchReadLineString = stdin.readLineSync();
              if (switchReadLineString != null) {
                switchReadLineString = switchReadLineString.trim();
                quantity = int.tryParse(switchReadLineString);
              }
            }
            book.quantity = quantity;
            break;
          default:
            break;
        }
      }
    } while (readLineString != "E");
  }

  static delete(int id) {
    String? readLineString;
    int? bookID;
    Book? book;
    do {
      BookList.viewAllBooks();
      print("Enter a valid Book ID to Delete or [E] to Exit : ");
      readLineString = stdin.readLineSync();
      if (readLineString != null) {
        readLineString = readLineString.trim();
        bookID = int.tryParse(readLineString);
      }
      if (bookID != null) {
        book = books.firstWhereOrNull((element) => element.book_id == bookID);
      }
      if (book != null) {
        print("The Book you choose is :");
        print(
            '|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
        book.view();
        print(
            "Are you sure you want to delete it enter [Y] for yes or [N] for no");
        while (readLineString != "Y" && readLineString != "N") {
          readLineString = stdin.readLineSync();
          if (readLineString != null) {
            readLineString = readLineString.trim();
          }
        }
        if (readLineString == "Y") {
          books.remove(book);
          print("Book Deleted");
        }
      }
    } while (readLineString != "E");
  }

  static search() {
    String? readLineString;
    int? bookID;
    List<Book> searchResult = [];
    while (readLineString != "E") {
      print(
          "Enter a valid number (1-4) from the following to search by or [E] to Exit : ");
      print("1 - Book ID");
      print("2 - Title");
      print("3 - Author");
      print("4 - All");
      readLineString = stdin.readLineSync();
      if (readLineString != null) {
        readLineString = readLineString.trim();
      }
      String? switchReadLineString;
      switch (readLineString) {
        case "1":
          while (switchReadLineString != "E" && switchReadLineString != "C") {
            print(
                "Enter a Book ID to search for, [C] to Choose another Category or [E] to Exit : ");
            switchReadLineString = stdin.readLineSync();
            if (switchReadLineString != null) {
              switchReadLineString = switchReadLineString.trim();
              bookID = int.tryParse(switchReadLineString);
            }
            if (bookID != null) {
              searchResult =
                  books.where((element) => element.book_id == bookID).toList();
              print("Search Result are : ${searchResult.length}");
              print(
                  '|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
              if (searchResult.isNotEmpty) {
                for (var element in searchResult) {
                  element.view();
                }
              } else {
                print("No Books Found".padLeft(45));
              }
            }
          }
          break;
        case "2":
          while (switchReadLineString != "E" && switchReadLineString != "C") {
            print(
                "Enter a Book Title to search for, [C] to Choose another Category or [E] to Exit : ");
            switchReadLineString = stdin.readLineSync();
            if (switchReadLineString != null) {
              switchReadLineString = switchReadLineString.trim();
              searchResult = books
                  .where((element) =>
                      element.book_title.contains(switchReadLineString!))
                  .toList();
              print("Search Result are : ${searchResult.length}");
              print(
                  '|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
              if (searchResult.isNotEmpty) {
                for (var element in searchResult) {
                  element.view();
                }
              } else {
                print("No Books Found".padLeft(45));
              }
            }
          }
          break;
        case "3":
          while (switchReadLineString != "E" && switchReadLineString != "C") {
            print(
                "Enter a Book Author to search for, [C] to Choose another Category or [E] to Exit : ");
            switchReadLineString = stdin.readLineSync();
            if (switchReadLineString != null) {
              switchReadLineString = switchReadLineString.trim();
              searchResult = books
                  .where((element) =>
                      element.author.toString().contains(switchReadLineString!))
                  .toList();
              print("Search Result are : ${searchResult.length}");
              print(
                  '|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
              if (searchResult.isNotEmpty) {
                for (var element in searchResult) {
                  element.view();
                }
              } else {
                print("No Books Found".padLeft(45));
              }
            }
          }
          break;
        case "4":
          while (switchReadLineString != "E" && switchReadLineString != "C") {
            print(
                "Enter a search , [C] to Choose another Category or [E] to Exit : ");
            switchReadLineString = stdin.readLineSync();
            if (switchReadLineString != null) {
              switchReadLineString = switchReadLineString.trim();
              bookID = int.tryParse(switchReadLineString);
            } else {
              switchReadLineString = "";
            }
            searchResult = books
                .where((element) =>
                    element.book_id == bookID ||
                    element.book_title.contains(switchReadLineString!) ||
                    element.author.toString().contains(switchReadLineString))
                .toList();
            print("Search Result are : ${searchResult.length}");
            print(
                '|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
            if (searchResult.isNotEmpty) {
              for (var element in searchResult) {
                element.view();
              }
            } else {
              print("No Books Found".padLeft(45));
            }
          }
          break;
        default:
          break;
      }
    }
  }
}
