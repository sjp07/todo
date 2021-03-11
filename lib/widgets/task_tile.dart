import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              color: Colors.white,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        leading: Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            activeColor: Color(0xff009688),
            value: isChecked,
            onChanged: checkboxCallback,
          ),
        ),
      ),
    );
  }
}
