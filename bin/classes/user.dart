abstract class User {
  String name;
  int age;
  User(this.name, this.age);
  show_info();
}

class student extends User {
  int id;
  show_info() {}
  student({required this.id, required String name, required int age})
      
}
