import 'package:flutter/material.dart';

import 'Views/tasks_view.dart';

void main() {
  runApp(TaskManagmentApp());
}

class TaskManagmentApp extends StatelessWidget {
  const TaskManagmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        TasksView.id: (context) => TasksView(),
      },
      initialRoute: TasksView.id,
    );
  }
}
