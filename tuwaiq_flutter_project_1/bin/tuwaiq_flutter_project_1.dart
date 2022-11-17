
void main(List<String> arguments) {

}

abstract class lab {
  var qu;
  viewInfo();
}

mixin Book {

  var num;

  edit(){
    print("");
  }

}

class ware extends lab with Book {
  
  @override
  viewInfo() {
    print(qu);
    print(num);
  }


}
