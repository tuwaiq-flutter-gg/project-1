import 'classes/Book.dart';
import 'classes/user.dart';
import 'dart:io';

enum oprations { exit, add, delete, edit, viewInfo }

void main() {
  Book b1 = Book(
      id: 1,
      titel: "Start with why",
      author: "Simon Silk",
      price: 80.0,
      quantity: 13);
  Book b2 = Book(
      id: 2,
      titel: "But how do it know",
      author: "J. Clark Scott",
      price: 59.9,
      quantity: 22);
  Book b3 = Book(
      id: 3,
      titel: "Clean Code",
      author: "Robert Cecil Martin",
      price: 80.0,
      quantity: 5);
  Book b4 = Book(
      id: 4,
      titel: "Zero to One",
      author: "Peter Thiel",
      price: 80.0,
      quantity: 12);
  Book b5 = Book(
      id: 5,
      titel: "You don't know JS",
      author: "Kyle Simpson",
      price: 80.0,
      quantity: 9);

  List<Book> books = [b1, b2, b3, b4, b5];
  bool run = true;
  int op = 1;
  
  do {
    menu();
    print("Enter your choice:");
    // check if the uesr does'n enter anything
    String? inputOp = stdin.readLineSync();
    if (inputOp!.length == 0) {
      print("please, enter a number");
    } else
      op = int.parse(inputOp!);
    // end checking

    if (op == oprations.exit.index)
      run = false;
    else if (op == oprations.add.index) {
      String? inputOp = stdin.readLineSync();
      int add = 1;
      add = int.parse(inputOp!);
      if (add == 0) {
        print("Please,enter a number");
      } else if (add == 1) {
        print("Please enter the book ID");
        String? inputOp5 = stdin.readLineSync();
        int idBook = int.parse(inputOp5!);
        print("Please enter the title of the book");
        String? inputOp1 = stdin.readLineSync();
        print("Please enter the author of the book");
        String? inputOp2 = stdin.readLineSync();
        print("Please enter the price of the book");
        String? inputOp3 = stdin.readLineSync();
        double priceBook = double.parse(inputOp3!);
        print("Please enter book quantity");
        String? inputOp4 = stdin.readLineSync();
        int quantityBook = int.parse(inputOp4!);
        books.add(Book(
            id: idBook,
            titel: inputOp1!,
            author: inputOp2!,
            price: priceBook,
            quantity: quantityBook));
      }
      //addBoks();
    } else if (op == oprations.delete.index) {
      print("delete");
    } else if (op == oprations.edit.index) {
      print("edit");
      print(books);
    } else if (op == oprations.viewInfo.index) {
      print("edit");
    } else
      print("Wrong number");
    print("\n\n\n");
  } while (run);
  print("Thank you. ;)");
}

void menu() {
  print("=" * 82);
  print("==\t\t\t\t\t\t\t\t\t\t==");
  print("==\t\t\t\t     Library\t\t\t\t\t==");
  print("==\t\t\t\t\t\t\t\t\t\t==");
  print("=" * 82);
  print("== 1) To add a book, choose 1\t\t\t\t\t\t\t==");
  print("== 2) To remove a book, choose 2\t\t\t\t\t\t==");
  print("== 3) To edit a book, choose 3\t\t\t\t\t\t\t==");
  print("== 4) To view information, choose 4\t\t\t\t\t\t==");
  print("== 0) To exit, choose 0\t\t\t\t\t\t\t\t==");
  print("=" * 82);
}
