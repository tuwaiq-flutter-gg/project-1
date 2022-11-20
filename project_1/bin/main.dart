import 'packages.dart';

main(){

  EditBookInfo editInfo = EditBookInfo(); //Object from Edit Calss
  ViewBookinfoe viewInfo = ViewBookinfoe(); //Object from View Information Class
  SellingBooks sellBook = SellingBooks(); //Object from View Sell Class
  DeleteBook deleteBook = DeleteBook(); //Object from Delete Class
  AddBook add = AddBook();
  

  


 while (true) { // Infinity loop
   print("\n   \x1b[1;33mWlocme To ASK Library ^_^\x1b[0m");
   print("---------------------------------");
   stdout.write("Plase Enter The number To Choose:");
   stdout.write("\n 1.Books Information \n 2.Add New Book \n 3.Edit Book information \n 4.Delete Book \n 5.Search for Book \n 6.Book for sell \n 7.Exit \n---------------------------------\n\x1b[1;34m Enter No: \x1b[0m");
   
   int no =int.parse(stdin.readLineSync()!);//Read From User
   
   print("---------------------------------\n");
  switch(no) { 

    case 1:{ //This Case to View all Books information
      print("Books Information:");
      viewInfo.viewBookInformation();
      
    } break;

    case 2:{
      print("Add Book:");
      add.addBook();
      add.viewBookInformation();


    } break;

    case 3: {//In this Case we can EDit on Book Information
      print("Edit Book Informatin:");
      editInfo.editBook();

    } break;

    case 4: {//To Delete a Book by ID
      print("Delete Book:");
      deleteBook.deleteBook();
      deleteBook.viewBookInformation();
    } break;

    case 5: {
      print("Search for Book:");

    } break;

    case 6: { //In this Case we Will sell the books and see how Quantity we have
      print("Book For Sell:");
      sellBook.buyBook();
      print("\n\x1b[1;37;47mBook Informatin After Selling:\x1b[0m\n");
      sellBook.viewBookInformation();

    }break;
    case 7: { // To Exit From the Program
      print(" \x1b[1;32mThank you, Good Bye!\x1b[0m\n");
      exit(0);
    } 

    //If User input user is wrong
    default: { 
    print("\x1b[1;31mWrong choice -_-! Let's try Agin..\x1b[0m");
   }
  } 
 }
}

