import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [];
  int get taskCount{
    return _tasks.length;
  }
  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }
  void addTask(String taskTitle){
    _tasks.add(Task(
      name: taskTitle
    ));
    notifyListeners();
  }
  void changeTaskState(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void removeTask (Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}