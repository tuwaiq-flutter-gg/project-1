

abstract class Books {
  static String labraryName = "ASK";
  int? book_id;
  String? book_tile;
  String? auther;
  double? price;
  int? quantity;

  List<Map<String, dynamic>> bookList = [
    {
      "ID": "ID",
      "Name": "Book Title",
      "Author": "Author",
      "Price": "Price",
      "Quantity": "Quantity"
    },
    {
      "ID": 1,
      "Name": "Start with why",
      "Author": "Simoin",
      "Price": 89,
      "Quantity": 13
    },
    {
      "ID": 2,
      "Name": "But hwo do it know",
      "Author": "J.Clark Scott",
      "Price": 59.9,
      "Quantity": 22
    },
    {
      "ID": 3,
      "Name": "Claen Code",
      "Author": "Robert Cecil Martin",
      "Price": 50,
      "Quantity": 5
    },
    {
      "ID": 4,
      "Name": "Zero to one",
      "Author": "Peter Thiel",
      "Price": 45,
      "Quantity": 12
    },
    {
      "ID": 5,
      "Name": "You don't know js",
      "Author": "kyle Simpson ",
      "Price": 39.9,
      "Quantity": 0
    },
  ];


  addBook();
  editBook();
  deleteBook();
  viewBookInformation();
  buyBook();
}
