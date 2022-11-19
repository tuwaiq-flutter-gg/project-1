import 'package:books/book.dart';
import 'package:books/book_list.dart';

void main(List<String> arguments) {
  Book test = Book(
      book_id: 1,
      book_title: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      author: "bbb",
      price: 7.99,
      quantity: 99);
  //BookList.add();
  BookList.books.add(test);
  //print('|--ID--|---------Book Title---------|----------Author----------|--Price--|-Quantity-|');
  BookList.viewAllBooks();
}
