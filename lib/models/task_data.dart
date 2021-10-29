import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  final List<Task> _tasks = [
    Task(name: 'Buy bread'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy milk'),
    // Task(name: 'Buy rice'),
    // Task(name: 'Buy beef'),
    // Task(name: 'Buy onion'),
    // Task(name: 'Buy vegetable'),
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
    task.taskDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}