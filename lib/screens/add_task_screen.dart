import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xff00796B),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff009688),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            TextField(
              decoration: new InputDecoration.collapsed(hintText: 'Enter Task'),
              autofocus: true,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton.icon(
              icon: Icon(Icons.add),
              label: Text('Add'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color(0xff607D8B),
                // minimumSize: Size(100, 50),
              ),
              onPressed: () {
                if (newTaskTitle.isNotEmpty) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
