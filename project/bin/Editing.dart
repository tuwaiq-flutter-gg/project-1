import 'main.dart';
import 'Books.dart';
import 'search.dart';

import 'dart:io';
import 'dart:math';

//The main function to Edit it will take the ID book you want to edit and let you choose what to edit
WhatToEdit(int ID) {
  //int ID=findBookID();
  bool ed = true;
  int editType;
  while (ed) {
    print(
        "what do you want to Edit ? \n1- Title.\n2- Author. \n3- Price.\n4- Quantity.");
    editType = int.parse(stdin.readLineSync()!);
    if (editType == 1 || editType == 2 || editType == 3 || editType == 4) {
      editing(editType, ID);
      ed = false;
    }
  }
}

//here where the editing happens
editing(int typeOFedit, int ID) {
  var edinting;
  bool ed = true;
  if (typeOFedit == 1) {
    while (ed) {
      print("Enter The New Title:");
      edinting = stdin.readLineSync();
      if (edinting != "") {
        for (int i = 0; i < Books.length; i++) {
          var item = Books[i].book_id;
          if (item == ID) {
            Books[i].setTitle(edinting);
            ed = false;
            print("you done changes successfully");
            print("--------------------------------------");
          }
        }
      }
    }
  } else if (typeOFedit == 2) {
    while (ed) {
      print("Enter the New author:");
      edinting = stdin.readLineSync()!;
      if (edinting != "") {
        for (int i = 0; i < Books.length; i++) {
          var item = Books[i].book_id;
          if (item == ID) {
            Books[i].setAuthor(edinting);
            ed = false;
            print("you done changes successfully");
            print("--------------------------------------");
          }
        }
      }
    }
  } else if (typeOFedit == 3) {
    while (ed) {
      print("Enter the new price:");
      edinting = double.parse(stdin.readLineSync()!);
      if (edinting != "" && edinting > 0) {
        for (int i = 0; i < Books.length; i++) {
          var item = Books[i].book_id;
          if (item == ID) {
            Books[i].setPrice(edinting);
            ed = false;
            print("you done changes successfully");
            print("--------------------------------------");
          }
        }
      }
    }
  } else if (typeOFedit == 4) {
    while (ed) {
      print("Enter the new quantity:");
      edinting = int.parse(stdin.readLineSync()!);
      if (edinting != "" && edinting > 0) {
        for (int i = 0; i < Books.length; i++) {
          var item = Books[i].book_id;
          if (item == ID) {
            Books[i].setQuantity(edinting);
            ed = false;
            print("you done changes successfully");
            print("--------------------------------------");
          }
        }
      }
    }
  }
}

//A function to find the Book ID to call the edit or any other function
int findBookID() {
  bool shopping = true;
  int BookID;

  String ID = "Enter Book ID to put it in cart:";
  while (shopping) {
    print(ID);
    BookID = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].book_id;
      if (x == BookID) {
        return x;
      }
    }
    ID = "Enter a Vaild Book ID ! ";
  }
}
