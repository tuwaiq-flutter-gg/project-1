import 'book.dart';

class ViewBookinfoe extends Books {

  @override
  viewBookInformation() { //This Function will view all the information we have about books
     for (int i = 0; i < bookList.length; i++ ) {
      print("${bookList[i]["ID"]}  |  ${bookList[i]["Name"  ]}  |  ${bookList[i]["Author"]}  |  ${bookList[i]["Price"]} | ${bookList[i]["Name"]} | ${bookList[i]["Quantity"]}\n");  
     }
  }


  @override
  addBook(){}
  @override
  buyBook() {}
  @override
  deleteBook() {}
  @override
  editBook() {}


}
