// item could be any product in the library, for now we just have books, in future we may add like papers, researchs, and ...., etc
abstract class item {
  late int id; // id of the item
  late int quantity; // quantity of the item, or copys of the item.
  item({required this.id, required this.quantity});
  showInfo();
}
