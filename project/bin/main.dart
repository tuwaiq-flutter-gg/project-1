import 'dart:io';
import 'dart:math';

import 'Editing.dart';
import 'Books.dart';
import 'search.dart';

//import 'package:print_table/print_table.dart';

void main() {
  print("Welcom to pur library");
  //add();
  //delete();
  //buying();
  // add();
  // print(Books[5].viewInformation());
  WhatToEdit(1);
  print(Books[0].viewInformation());

  
}

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

  @override
  viewInformation() {
    print(
        "The ID is \"$book_id\"\tThe Title is \"$book_title\"\tThe author \"$author\"\tThe price is \"$price\"\tThe quantity is \"$quantity\" ");
  }
}

add() {
  String? title;
  String? author;
  double? price;
  int quantity = 0;
  bool adding = true;

  while (adding) {
    print("Enter Book Title");
    title = stdin.readLineSync();
    if (title != "") {
      adding = false;
    }
  }
  adding = true;
  while (adding) {
    print("Enter Book Author");
    author = stdin.readLineSync()!;
    if (author != "") {
      adding = false;
    }
  }
  adding = true;
  while (adding) {
    print("Enter Book Price");
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
}

delete() {
  bool deleting = true;
  int deleteID;
  String deleteMessage = "Enter Book ID for deleting it ";
  while (deleting) {
    print(deleteMessage);
    deleteID = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].book_id;
      if (x == deleteID) {
        Books.remove(Books[i]);
        deleting = false;
      }
      deleteMessage = "Re enter a Valid ID";
    }
  }
}

buying() {
  bool shopping = true;
  int BookID;
  int q = 0;
  String Cart = "Enter Book ID to put it in cart";
  while (shopping) {
    print(Cart);
    BookID = int.parse(stdin.readLineSync()!);
    bool b = false;
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].book_id;
      // print(x);
      if (x == BookID) {
        if (Books[i].quantity > 0) {
          //Books[i].sell() did not work tried another way
          Books[i].quantity -= 1;
          cart.add(Books[i]);
          // q++;
          b = true;
          //Cart = "Enter another ID";
          // print(x);
        } else {
          print("Sorry! we are out of stock");
        }
      }
    }
    if (b) {
      // check if the book has been added to the cart
      print("enter 0 to finish shopping or anyNumber to choose another Book");
      BookID = int.parse(stdin.readLineSync()!);
      if (BookID == 0) {
        shopping = false;
      }
    } else {
      print("Wrong Book ID");
    }
  }
  viewCart();
}

viewCart() {
  print("Your Shooping Cart has these items");
  double total = 0;
  for (int i = 0; i < cart.length; i++) {
    total += cart[i].price!;
    print(
        "Book ID ${cart[i].book_id} Book Title ${cart[i].book_title} the price = ${cart[i].price}");
  }
  print("Total = $total");
}
