import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'Views/tasks_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Tasks_Box');
  runApp(const TaskManagmentApp());
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
