import 'dart:io';
import 'book.dart';

class DeleteBook extends Books {
  int? book_id;

  @override
  deleteBook()  {

    stdout.write("Enter The Book ID you want to Delete it: ");
      book_id = int.parse(stdin.readLineSync()!);//Read From User
      if(book_id! > 0){ // Here i want the user input a value bigger than 0
    bookList.removeAt(book_id!); // By remove at we will delete the index the user enter
      }
      else{
        print("\x1b[1;31mWrong choice -_-!\x1b[0m"); // if the value equal or less than 0
      }
  }


  @override
  viewBookInformation() { // This Function will Reviwo All the book Information after delete the book
      print("\n");
    for (int i = 0; i < bookList.length; i++ ) {
      print("${bookList[i]["ID"]}  |  ${bookList[i]["Name"  ]}  |  ${bookList[i]["Author"]}  |  ${bookList[i]["Price"]} | ${bookList[i]["Name"]} | ${bookList[i]["Quantity"]}\n");  
     }

     print("    \x1b[1;32;42m  Book $book_id is Deleted  \x1b[0m"); //Message about the book we were delete it 
     print("---------------------------------\n");
  }



  @override
  editBook(){}
  @override
  addBook(){}
  @override
  buyBook(){}

  
}