import 'package:hive_flutter/hive_flutter.dart';

class todoDatabase {
  List todoList = [];
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    todoList = [
      ['Welcome to the app', false],
    ];
  }

  // load the data
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // update database
  void updateData() {
    _myBox.put('TODOLIST', todoList);
  }
}
