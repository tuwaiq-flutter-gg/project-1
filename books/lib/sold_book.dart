class SoldBook {
  String title;
  double price;
  int quantity;
  double total = 0;

  SoldBook({required this.title, required this.price, required this.quantity}) {
    total = price * quantity;
  }

  view() {
    String printTitle = title;
    if (printTitle.length < 26) {
      printTitle = " " * ((26 - printTitle.length) ~/ 2) + printTitle;
    }
    printTitle = printTitle.padRight(26);
    if (printTitle.length > 26) {
      printTitle = "${printTitle.substring(1, 24)}...";
    }
    //---
    String printQuantity = quantity.toString().padLeft(4, "0");
    if (printQuantity.length < 12) {
      printQuantity = " " * ((12 - printQuantity.length) ~/ 2) + printQuantity;
    }
    printQuantity = printQuantity.padRight(12);
    //---
    String printPrice = price.toString();
    if (printPrice.length < 14) {
      printPrice = " " * ((14 - printPrice.length) ~/ 2) + printPrice;
    }
    printPrice = printPrice.padRight(14);
    //---
    double total = quantity * price;

    String printTotal = total.toString();
    if (printTotal.length < 12) {
      printTotal = " " * ((12 - printTotal.length) ~/ 2) + printTotal;
    }
    printTotal = printTotal.padRight(12);
    print("| $printTitle | $printQuantity | $printPrice | $printTotal|");
  }
}
