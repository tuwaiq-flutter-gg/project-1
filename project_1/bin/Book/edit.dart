import 'dart:io';
import 'book.dart';

class EditBookInfo with Books {
  @override
  editBook() {
    stdout.write("\x1b[1;34mPlase Enter the Book ID:\x1b[0m ");
    int book_id = int.parse(stdin.readLineSync()!); //Read the book ID from the user

    for (var i = 1; i < bookList.length; i++) {
      //Use i for loop to access the index in the booklist

      if (book_id == i) {
        //Here we will check if the i equal the user input
        print("What you want To Edit..?");
        stdout.write(" 1.Book Name. \n 2.Author Name. \n 3.Book Price. \n 4.Book Quantity \n 5.Exit \n \x1b[1;34mEnter No: \x1b[0m");

        int editNo = int.parse(stdin.readLineSync()!); //The user will input what he/she want change from the list
        switch (editNo) {
          case 1:
            stdout.write(" New Book Name: ");
            bookList.elementAt(i).update("Name", (value) => stdin.readLineSync()); //i form for loop and will selected by elementAt then update it
            break;

          case 2:
            stdout.write(" New Author Name: ");
            bookList
                .elementAt(i)
                .update("Author", (value) => stdin.readLineSync());
            break;

          case 3:
            stdout.write(" Book Price: ");
            bookList
                .elementAt(i)
                .update("Price", (value) => stdin.readLineSync());
            break;

          case 4:
            stdout.write(" Book Quantity: ");
            bookList
                .elementAt(i)
                .update("Quantity", (value) => stdin.readLineSync());
            break;

          case 5:
            exit(0);

          default:
            {
              print("\x1b[1;31mWrong choice -_-!\x1b[0m");
            }
            break;
        } //view the information after updated
        print("----------------------------------------------");
        print("\t\t\x1b[1;33mNew Book Information\x1b[0m");
        print("----------------------------------------------");
        print(" \n Book Name: ${bookList[i]["Name"]} \n Author Name: ${bookList[i]["Author"]} \n Price: ${bookList[i]["Price"]} \n Quantity: ${bookList[i]["Quantity"]}\n");
        print("----------------------------------------------");
      }
    }
  }

 
  @override
  buyBook() {}
  @override
  deleteBook() {}
  @override
  viewBookInformation() {}
  @override
  addBook() {}
}
