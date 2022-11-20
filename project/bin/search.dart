import 'Editing.dart';
import 'Books.dart';
import 'main.dart';

import 'dart:io';
import 'dart:math';

class Searching {
//main function to search let you choose the way to search and call look to find result
  static search() {
    bool searching = true;
    String search;
    while (searching) {
      print(
          "How do you want to Search?\n1- By ID.\n2- By Title. \n3- By Author. \nor enter R to return");
      search = stdin.readLineSync()!;
      if (search == "1" || search == "2" || search == "3") {
        searching = false;
        return look(search);
      } else if (search == "r" || search == "R") {
        return 0;
      } else {
        print("You entered Wrong value! ");
      }
    }
  }

//this function take which to search for and find it
  static int look(String search) {
    var booksearch;
    int BookID = 0;
    bool se = true;
    if (search == "1") {
      while (se) {
        print("Enter Book ID:");
        booksearch = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < Books.length; i++) {
          var item = Books[i].book_id;
          if (item == booksearch) {
            Books[i].viewInformation();
            se = false;
            BookID = Books[i].getID();
            return BookID;
          }
        }
      }
    } else if (search == "2") {
      while (se) {
        print("Enter Book Title:");
        booksearch = stdin.readLineSync()!;
        for (int i = 0; i < Books.length; i++) {
          var item = Books[i].book_title;
          if (item!.contains(booksearch)) {
            // if (item == booksearch) for exact Match
            Books[i].viewInformation();
            se = false;
            BookID = Books[i].getID();
            return BookID;
          }
        }
      }
    } else if (search == "3") {
      while (se) {
        print("Enter Book Autor:");
        booksearch = stdin.readLineSync()!;
        for (int i = 0; i < Books.length; i++) {
          var item = Books[i].author;
          if (item!.contains(booksearch)) {
            // // if (item == booksearch) for exact Match
            Books[i].viewInformation();
            se = false;
            BookID = Books[i].getID();
            return BookID;
          }
        }
      }
    }
    return 0;
  }
}
