class Book {
  int id;
  String titel, author;
  double price;
  int quantity;
  Book(
      {required this.id,
      required this.titel,
      required this.author,
      required this.price,
      required this.quantity});
  @override
  String toString() {
    return "Id:$id, Title:$titel, Author:$author, Price:$price, Quantity:$quantity";
  }
}
