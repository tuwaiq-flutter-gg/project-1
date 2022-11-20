import 'dart:io';
import 'book.dart';



class SerchById extends Books {
  @override
  addBook() {
    // TODO: implement addBook
    throw UnimplementedError();
  }

  @override
  buyBook() {
    // TODO: implement buyBook
    throw UnimplementedError();
  }

  @override
  deleteBook() {
    // TODO: implement deleteBook
    throw UnimplementedError();
  }

  @override
  editBook() {
    // TODO: implement editBook
    throw UnimplementedError();
  }

  @override
  viewBookInformation() {
    // TODO: implement viewBookInformation
    throw UnimplementedError();
  }

  SerchId() {
    stdout.write("\x1b[1;34mPlase Enter the Book ID:\x1b[0m ");
    String? bookShelfNo = stdin.readLineSync();
    int byId = int.parse(bookShelfNo!);

    if (bookList[0]["ID"] == byId) {
      print(bookList[0]);
    } else if (bookList[1]["ID"] == byId) {
      print(bookList[1]);
    } else if (bookList[2]["ID"] == byId) {
      print(bookList[2]);
    } else if (bookList[3]["ID"] == byId) {
      print(bookList[3].values);
    } else if (bookList[4]["ID"] == byId) {
      print("${bookList[4].values}");
    } else if (bookList[5]["ID"] == byId) {
      print("${bookList[5].values}");
    } else {
      print("\x1b[1;34m no result \x1b[0m");
    }
  }
}

class SerchByTitle extends Books {
  @override
  addBook() {
    // TODO: implement addBook
    throw UnimplementedError();
  }

  @override
  buyBook() {
    // TODO: implement buyBook
    throw UnimplementedError();
  }

  @override
  deleteBook() {
    // TODO: implement deleteBook
    throw UnimplementedError();
  }

  @override
  editBook() {
    // TODO: implement editBook
    throw UnimplementedError();
  }

  @override
  viewBookInformation() {
    // TODO: implement viewBookInformation
    throw UnimplementedError();
  }

  SerchTitle() {
    stdout.write("\x1b[1;34mPlase Enter the Book Title:\x1b[0m ");
    String? byTitle = stdin.readLineSync();

    if (bookList[0]["Name"] == byTitle) {
      print(bookList[0].values);
    } else if (bookList[1]["Name"] == byTitle) {
      print(bookList[1].values);
    } else if (bookList[2]["Name"] == byTitle) {
      print(bookList[2].values);
    } else if (bookList[3]["Name"] == byTitle) {
      print(bookList[3].values);
    } else if (bookList[4]["Name"] == byTitle) {
      print("${bookList[4].values}");
    } else if (bookList[5]["Name"] == byTitle) {
      print("${bookList[5].values}");
    } else {
      print("\x1b[1;34m no result \x1b[0m");
    }
  }
}

class SerchByAthor extends Books {
  @override
  addBook() {
    // TODO: implement addBook
    throw UnimplementedError();
  }

  @override
  buyBook() {
    // TODO: implement buyBook
    throw UnimplementedError();
  }

  @override
  deleteBook() {
    // TODO: implement deleteBook
    throw UnimplementedError();
  }

  @override
  editBook() {
    // TODO: implement editBook
    throw UnimplementedError();
  }

  @override
  viewBookInformation() {
    // TODO: implement viewBookInformation
    throw UnimplementedError();
  }

  SerchByAuthor() {
    stdout.write("\x1b[1;34mPlase Enter the Author Name \x1b[0m ");
    String? byAut = stdin.readLineSync();

    if (bookList[0]["Author"] == byAut) {
      print(bookList[0]);
    } else if (bookList[1]["Author"] == byAut) {
      print(bookList[1]);
    } else if (bookList[2]["Author"] == byAut) {
      print(bookList[2]);
    } else if (bookList[3]["Author"] == byAut) {
      print(bookList[3]);
    } else if (bookList[4]["Author"] == byAut) {
      print("${bookList[4]}");
    } else if (bookList[5]["Author"] == byAut) {
      print("${bookList[5]}");
    } 
    
    
     else {
      print("\x1b[1;34m no result \x1b[0m");
    }
  }
}