import 'item.dart';

class Book extends item {
  String titel, author;
  double price;
  Book(
      {required int id,
      required this.titel,
      required this.author,
      required this.price,
      required int quantity})
      : super(id: id, quantity: quantity);
  @override
  String toString() {
    return "Id: $id\nTitle: $titel\nAuthor: $author\nPrice: $price\nQuantity: $quantity";
  }

  // Getters & Setters
  int get getId => id;
  String get getTitle => titel;
  String get getAuthor => author;
  double get getPrice => price;
  int get getQuantity => quantity;

  set setId(id) => this.id = id;
  set setTitle(title) => this.titel = titel;
  set setAuthor(author) => this.author = author;
  set setPrice(price) => this.price = price;
  set setQuantity(quantity) => this.quantity = quantity;

  @override
  showInfo() {
    print(
        "Book Id:$id, Title:$titel, Author:$author, Price:$price, Quantity:$quantity");
  }
}
