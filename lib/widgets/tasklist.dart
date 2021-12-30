import 'package:flutter/material.dart';
import 'tasktile.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/task_data.dart';

class TasksList extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallback: (value) {
                    taskData.updateTask(task);
                }, longPressCallback: (){
                  taskData.deleteTask(task);
            },
            );
          },
          itemCount: taskData.taskCount ,
        );
      },
    );
  }
}
