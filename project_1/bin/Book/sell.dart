import 'dart:io';
import 'book.dart';

class SellingBooks extends Books {
  double cart = 0;

  @override
  buyBook() {
    stdout.write("Please specify the ID of the book you want to sell it: ");
    int book_id = int.parse(stdin.readLineSync()!);  //Read From User as String

    if (bookList[book_id]["Quantity"] > 0) { // Check the Quantity of Books by ID
      print(
          "The Quantity we have: \x1b[1;32m${bookList[book_id]["Quantity"]}\x1b[0m");
      bookList[book_id]["Quantity"] = bookList[book_id]["Quantity"] - 1;

      print(
          "Available Quantity Now: \x1b[1;31m${bookList[book_id]["Quantity"]}\x1b[0m");

      cart = bookList[book_id]["Price"] + cart;
      print("Customer Invoice: \x1b[0;36m$cart\x1b[0m");
    } else {
      print("\n \t \x1b[1;31;41m  Sorry! it's out of stock  \x1b[0m\n");
    }

    print("--------------------------------------------");
  }

  @override
  viewBookInformation() {
    for (var i = 1; i < bookList.length; i++) {
      stdout.write(
          "${bookList[i]["ID"]}  |  ${bookList[i]["Name"]}  |  ${bookList[i]["Author"]}  |  ${bookList[i]["Price"]} | ${bookList[i]["Quantity"]}\n");
      print( "---------------------------------------------------------------------------------");
    }
  }


  @override
  deleteBook() {}
  @override
  editBook() {}
  @override
  addBook() {}
}
