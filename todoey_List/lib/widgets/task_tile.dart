// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;

// You should specify the parameter type that you want to pass.
  final Function(bool?) checkboxCallback;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkboxCallback,
    );
  }
}
