//1.Import Dart:io to take input from the console.
import 'dart:io';

main() {
  Info info = Info();
  bool repeatMenu = true;
  do {
    print("Enter number of menu:");
    print("1.Add \n2.Edit \n3.Delete \n4.view Information \n5.Search \n6.Exit");
    read(int menu) {
      switch (menu) {
        case 1:
          {
            info.Add();
            break;
          }
        case 2:
          {
            info.Edit();
            break;
          }
        case 3:
          {
            info.Delete();
            break;
          }
        case 4:
          {
            print(info.myListBook.join("\n"));
            break;
          }
        case 5:
          {
            break;
          }
        case 6:
          {
            exit(6);
          }
        default:
          {
            print("should be a number between 1-6");
            break;
          }
      }
    }

    int? menu = int.parse(stdin.readLineSync()!);
    read(menu);
  } while (repeatMenu);
}

////////////////////////////////////////////Classes////////////////////////////////////////////
abstract class LibraryBook {
  Edit();
}

class Info extends LibraryBook {
  List myListBook = [
    BooksRequirments(
        book_id: 1,
        book_title: "Start with why",
        author: "Simon Sink",
        price: 80.0,
        quantity: 13),
    BooksRequirments(
        book_id: 2,
        book_title: "But how do it know",
        author: "J. Clark Scott",
        price: 59.9,
        quantity: 22),
    BooksRequirments(
        book_id: 3,
        book_title: "Clean Code",
        author: "Robert Cecil Martin",
        price: 50.0,
        quantity: 5),
    BooksRequirments(
        book_id: 4,
        book_title: "Zero to One",
        author: "Peter Thiel",
        price: 45.0,
        quantity: 12),
    BooksRequirments(
        book_id: 5,
        book_title: "You don't know JS",
        author: "Kyle Simpson",
        price: 39.9,
        quantity: 9),
  ];
  //String? editInput1 = stdin.readLineSync();
  @override
  Edit() {
    //still  working on it
    print("Enter the ID of the book to edit it:");
    int editInput = int.parse(stdin.readLineSync()!);
    print("Enter the new Title:");
    String? newTitle = stdin.readLineSync();
    print("Enter the new Author:");
    String? newAuthor = stdin.readLineSync();
    print("Enter the new Price:");
    int? newPrice = int.parse(stdin.readLineSync()!);
    print("Enter the new Quantity:");
    int? newQuantity = int.parse(stdin.readLineSync()!);
    myListBook[editInput - 1] = BooksRequirments(
        book_id: editInput,
        book_title: newTitle,
        author: newAuthor,
        price: newPrice,
        quantity: newQuantity);
    print(
        "You've editted the book successfully, view information to make sure!.");
  }

  Add() {
    int book_id = 5;
    book_id = book_id + 1;
    print("Enter the title of book:");
    String? inp1 = stdin.readLineSync();
    print("Enter the author of book:");
    String? inp2 = stdin.readLineSync();
    print("Enter the price of book:");
    num inp3 = double.parse(stdin.readLineSync()!);
    print("Enter the quantity of book:");
    int inp4 = int.parse(stdin.readLineSync()!);
    print("You've added a new book.");
    myListBook.add(BooksRequirments(
        book_id: book_id,
        book_title: inp1,
        author: inp2,
        price: inp3,
        quantity: inp4));
  }

  Delete() {
    print("Enter the ID of the book to remove it:");
    int inp5 = int.parse(stdin.readLineSync()!);
    myListBook.removeAt(inp5 - 1);
  }

  Search() {}
}

class BooksRequirments {
  int? book_id = 0;
  String? book_title;
  late String? author;
  num? price;
  int? quantity;
  BooksRequirments(
      {this.book_id, this.book_title, this.author, this.price, this.quantity});

  String toString() {
    return "ID:$book_id, Book Title:$book_title, Author:$author, Price:$price, Quantity:$quantity";
  }
}

// mixin search {

// }
// mixin read{

// }
// class all with read,seach{

// }
