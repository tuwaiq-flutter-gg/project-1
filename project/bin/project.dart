void main() {}

abstract class Library {
  add();
  delete();
  edit();
  viewInformation();
  search();
  sell();
}

class Book extends Library {
  int? book_id;
  String? book_title;
  String? author;
  double? price;
  int? quantity;

  @override
  add() {}

  @override
  delete() {}

  @override
  edit() {}

  @override
  search() {}

  @override
  sell() {}

  @override
  viewInformation() {}
}
