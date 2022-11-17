import 'package:books/book_interface.dart';

class Book implements BookEdit {
  final int book_id;
  String book_title;
  String? author;
  double price;
  int quantity;

  Book(
      {required this.book_id,
      required this.book_title,
      this.author,
      required this.price,
      required this.quantity});

  @override
  editTitle(String title) {
    book_title = title;
  }

  @override
  editAuthor(String author) {
    this.author = author;
  }

  @override
  editPrice(double price) {
    this.price = price;
  }

  @override
  editQuantity(int quantity) {
    this.quantity = quantity;
  }
}
