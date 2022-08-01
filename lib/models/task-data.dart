import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    // Task(name: 'eat'),
    // Task(name: 'shower'),
    // Task(name: 'go jim'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
