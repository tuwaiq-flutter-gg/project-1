
import 'dart:io';
import 'book.dart';

class AddBook extends Books{


  @override
  addBook(){
    stdout.write("Enter Book ID: ");
    String? Id = stdin.readLineSync();
    int Idbook = int.parse(Id!);
    stdout.write("Enter Book Title: ");
    String? Title = stdin.readLineSync();
    stdout.write("Enter Author Name: ");
    String? Author = stdin.readLineSync();
    stdout.write("Enter Book Price: ");
    String? bookPric = stdin.readLineSync();
    int bookpri = int.parse(bookPric!);
    print("Enter Book Quantity: ");
    String? qunt = stdin.readLineSync();
    int addqunt = int.parse(qunt!);

    Map<String,dynamic>  addlise = ({
      "ID":Idbook ,
      "Name": Title ,
      "Author": Author,
      "Price": bookpri,
      "Quantity": addqunt
      
    });

    bookList.addAll({addlise});
    for (var i = 0; i < bookList.length; i++) {
       print("${bookList[i]["ID"]} |  ${bookList[i]["Name"]}  |  ${bookList[i]["Author"]}  |  ${bookList[i]["Price"]} | ${bookList[i]["Quantity"]}");
    }

   
  }



  @override
  buyBook(){}

  @override
  deleteBook(){}

  @override
  editBook(){}

  @override
  viewBookInformation(){}
  
}