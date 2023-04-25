class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, this.isDone = false, required this.todoText});

  static List<ToDo> todoList() {
    return [];
  }
}
