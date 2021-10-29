// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tiles.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskLists extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child) {
        return ListView.builder(
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTile(
                title: task.name,
                isChecked: task.isDone,
                checkedBox: (bool? checkedBoxState){
                  taskData.updateTask(task);
                },
                longPressed: (){
                  taskData.deleteTask(task);
                },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

// setState(() {
// Provider.of<TaskData>(context).tasks[index].taskDone();
// });