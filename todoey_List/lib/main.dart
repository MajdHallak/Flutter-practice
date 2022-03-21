import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_list/screens/tasks_screen.dart';
import 'package:todoey_list/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
