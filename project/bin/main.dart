import 'dart:io';
import 'Editing.dart';
import 'Books.dart';
import 'search.dart';
import 'Books.dart';
import 'main.dart';
import 'Shooping.dart';

void main() {
  RunTheLibrary();
}

RunTheLibrary() {
  print("Welcome to Our library ");

  bool quit = false;
  bool back = false; // to return back one step
  bool find = false;
  var theBook;

  do {
    print(
        "pleas select option:\n1- Show all library books\n2- Search for a book\n3- Add a book\n4- Sell a book\n5- Delete a book\n6- ViewCart\n7- CheckOut\nQ- quit");
    String? input = stdin.readLineSync();
    switch (input) {
      case "1": // Show all books
        {
          viewLibrary();
        }
        break;

      case "2": //Search for book
        {
          do {
            theBook = Searching.search();

            if (theBook > 0) {
              print("--------------------------------------");
              print(
                  "you find the book that you are looking for, what do you want to do?\n1- Edit the book\n2- Buy the book\n3- Delete the book\n4- Return to the main menu");
                  
              
              String? fundedBook = stdin.readLineSync();
              if (fundedBook == "1") {
                WhatToEdit(theBook);
                back = true;
              } else if (fundedBook == "2") {
                addToCart(theBook);
                back = true;
              } else if (fundedBook == "3") {
                deleteByID(theBook);
                back = true;
              } else if (fundedBook == "4") {
                back = true;
              } else {
                print("miss input, please try again");
                back = true;
              }
            } else {
              back = true;
            }
          } while (back = false);
          back = false;
        }

        break;
      case "3": //Add a book
        {
          add();
        }
        break;

      case "4": //sell a book
        {
          buying();
        }
        break;
      case "5": //Delete a book
        {
          delete();
        }
        break;
      case "6": //Delete a book
        {
          viewCart();
        }
        break;
      case "7": //Delete a book
        {
          Checkout();
        }
        break;
      case "Q": //Quit
        {
          quit = true;
        }
        break;
      case "q": // Quit if you are lazy
        {
          quit = true;
        }
        break;

      default:
        {
          print("Invalid choice");
        }
        break;
    }
  } while (quit == false);
  print("Goodbye, See you in the next time");
}
