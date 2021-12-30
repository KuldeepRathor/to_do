import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:to_do/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Ride Bullet'),
    Task(name: 'Play Badminton'),
    Task(name: 'Complete ToDo App'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTitle){

    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}

