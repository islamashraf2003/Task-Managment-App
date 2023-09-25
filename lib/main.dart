import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/simple_bloc_observer.dart';
import 'Bloc/add_task_cubit/cubit/add_tasks_cubit.dart';
import 'Model/task_model.dart';
import 'Views/tasks_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('Tasks_Box');
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
