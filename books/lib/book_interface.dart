// we used abstract class to organize our project
//and we override all the variables and function
//In our project ;

abstract class IBook {
  int get book_id;
  late String book_title;
  late String author;
  late double price;
  late int quantity;

  view();
}
