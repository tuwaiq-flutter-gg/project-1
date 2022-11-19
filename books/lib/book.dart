import 'package:books/book_interface.dart';

//Here we make Book classs that’s  inherited from IBook(abstract class)
//And override on it.
class Book implements IBook {
  @override
  final int book_id;
  @override
  String book_title;
  @override
  String author;
  @override
  double price;
  @override
  int quantity;
// Here is a constructor to initialize the data members of new objects (new Book) when it called.
  Book(
      {required this.book_id,
      required this.book_title,
      required this.author,
      required this.price,
      required this.quantity});

// by this function we will wiew the book details for the user
  @override
  view() {
    String printID = book_id.toString();
    if (printID.length < 5) {
      printID = " " * ((5 - printID.length) ~/ 2) + printID;
    }
    printID = printID.padRight(5);
    //-----
    String printTitle = book_title;
    if (printTitle.length < 26) {
      printTitle = " " * ((26 - printTitle.length) ~/ 2) + printTitle;
    }
    printTitle = printTitle.padRight(26);
    if (printTitle.length > 26) {
      printTitle = "${printTitle.substring(1, 24)}...";
    }
    //-------
    String printAuthor = author;
    if (printAuthor.length < 24) {
      printAuthor = " " * ((24 - printAuthor.length) ~/ 2) + printAuthor;
    }
    printAuthor = printAuthor.padRight(24);
    if (printAuthor.length > 24) {
      printAuthor = "${printAuthor.substring(1, 22)}...";
    }
    //-------
    String printPrice = price.toString();
    if (printPrice.length < 7) {
      printPrice = " " * ((7 - printPrice.length) ~/ 2) + printPrice;
    }
    printPrice = printPrice.padRight(7);
    //-------
    String printQuantity = quantity.toString().padLeft(4, "0");
    if (printQuantity.length < 9) {
      printQuantity = " " * ((9 - printQuantity.length) ~/ 2) + printQuantity;
    }
    printQuantity = printQuantity.padRight(9);
    print(
        "|$printID | $printTitle | $printAuthor | $printPrice | $printQuantity|");
  }
}
