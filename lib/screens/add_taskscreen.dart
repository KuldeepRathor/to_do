import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
          ),
        ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                    'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffA300EB),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText){
                    newTaskTitle = newText;
                  },
                ),
                SizedBox(height: 30.0),

                FlatButton(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  color: Color(0xffA300EB),
                  onPressed: (){
                      Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                      Navigator.pop(context);
                  },
                ),
              ],
            ),
        ),
    );
  }
}
