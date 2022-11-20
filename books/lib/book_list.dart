import 'package:books/sold_Book.dart';
import 'package:books/book.dart';

class BookList {
  static List<Book> books = [];
  static double vat = 0.15;
  static Map<DateTime, List<SoldBook>> invoices = {};
  static int lastID = 0;
}
