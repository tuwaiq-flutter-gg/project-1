import 'package:books/sold_Book.dart';
import 'package:books/book.dart';

import 'book.dart';
import 'sold_book.dart';

class BookList { 
  static List<Book> books = [];// "static" to be global and constract
  static double vat = 0.15;
  static Map<DateTime, List<SoldBook>> invoices = {};
  static int lastID = 0; // id must to start from zero because when we add or remove a book it will save the id number for it and can not any book has the same id
}
