
import 'dart:io';
import 'Editing.dart';
import 'Books.dart';
import 'search.dart';
import 'Books.dart';
import 'main.dart';
import 'main.dart';


buying() {
  bool shopping = true;
  int BookID;
  int q = 0;
  String Cart = "Enter Book ID to put it in cart";
  while (shopping) {
    print(Cart);
    BookID = int.parse(stdin.readLineSync()!);
    bool b = false;
    for (int i = 0; i < Books.length; i++) {
      int x = Books[i].book_id;
      // print(x);
      if (x == BookID) {
        //print("How Many Books you want");
        //var o = int.parse(stdin.readLineSync()!);
        if (Books[i].quantity > 0) {
          //Books[i].quantity >= o &&
          //Books[i].sell() did not work tried another way
          Books[i].quantity--; //-o
          // double v = Books[i].price! * o;
          cart.add(Books[i]);
          // q++;
          b = true;
          //Cart = "Enter another ID";
          // print(x);
        } else {
          print("Sorry! we are out of stock");
        }
      }
    }
    if (b) {
      // check if the book has been added to the cart
      print("enter 0 to finish shopping or anyNumber to choose another Book");
      // BookID = int.parse(stdin.readLineSync()!);
      var tt = stdin.readLineSync();
      if (tt == "0") {
        shopping = false;
      }
    } else {
      print("Wrong Book ID");
    }
  }
  viewCart();
}

addToCart(ID) {
  for (int i = 0; i < Books.length; i++) {
    int x = Books[i].book_id;
    // print(x);
    if (x == ID) {
      //print("How Many Books you want");
      //var o = int.parse(stdin.readLineSync()!);
      if (Books[i].quantity > 0) {
        //Books[i].quantity >= o &&
        //Books[i].sell() did not work tried another way
        Books[i].quantity--; //-o
        // double v = Books[i].price! * o;
        cart.add(Books[i]);
        print("The book has been added to the cart");
        viewCart();
      } else {
        print("Sorry! we are out of stock");
      }
    }
  }
}

viewCart() {
  double total = 0;
  if (cart.length == 0) {
    print("Your cart is empty !");
  } else {
    print("Your Shooping Cart has these items:");
    for (int i = 0; i < cart.length; i++) {
      total += cart[i].price!;
      print(
          "Book ID ${cart[i].book_id} Book Title ${cart[i].book_title} the price = ${cart[i].price}");
    }
    print("Total = $total");
    print("--------------------------------------");
  }
}

Checkout() {
  if (cart.length == 0) {
    print("You didnot add anything to your cart");
  } else {
    print("Thank you for your Shooping");
    print("--------------------------------------");
    cart.removeRange(0, cart.length);
  }
}

