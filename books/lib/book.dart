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
    String printID = book_id.toString().padLeft(3).padRight(5);
    //-----
    String printTitle = "";
    if (book_title.length < 26) {
      printTitle = " " * ((26 - book_title.length) ~/ 2) + book_title;
    }
    printTitle = printTitle.padRight(26);
    if (book_title.length > 26) {
      printTitle = "${book_title.substring(1, 24)}...";
    }
    //-------
    String printAuthor = "";
    if (author.length < 24) {
      printAuthor = " " * ((24 - author.length) ~/ 2) + author;
    }
    printAuthor = printAuthor.padRight(24);
    if (author.length > 24) {
      printAuthor = "${author.substring(1, 22)}...";
    }
    //-------
    String printPrice = price.toString().padLeft(5).padRight(7);
    //-------
    String printQuantity =
        quantity.toString().padLeft(4, "0").padLeft(6).padRight(9);
    print(
        "|$printID | $printTitle | $printAuthor | $printPrice | $printQuantity|");
  }
}
