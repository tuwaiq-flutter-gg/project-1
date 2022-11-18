abstract class User {
  String? name;
  int? age;
  User({this.name, this.age});
  show_info();
}

class student extends User {
  //id for student
  int id;
  student({required this.id, required String name, required int age})
      : super(name: name, age: age);
// m for User
  show_info() {
    print("hi ${name} You have a discount of %10");
  }
}

class Customer extends User {
  Customer({required String name, required int age})
      : super(name: name, age: age);

  show_info() {
    print("hi ${name}");
  }
}
