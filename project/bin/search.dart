import 'Editing.dart';
import 'Books.dart';
import 'main.dart';

import 'dart:io';
import 'dart:math';


//main function to search let you choose the way to search and call look to find result
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

//this function take which to search for and find it
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
