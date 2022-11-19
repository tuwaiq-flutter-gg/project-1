import 'package:books/book.dart';
import 'package:books/book_list.dart';

void main(List<String> arguments) {
  Book test = Book(
      book_id: 1,
      book_title: "a",
      author: "b",
      price: 7.99,
      quantity: 9);
  //BookList.add();
  BookList.books.add(test);
  //print('|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
  BookList.viewAllBooks();
}
