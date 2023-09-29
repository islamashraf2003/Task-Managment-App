import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/Bloc/category_color/category_colors_cubit.dart';
import 'package:taskes_app/Bloc/tasks_cubit/tasks_cubit.dart';
import 'package:taskes_app/simple_bloc_observer.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryColorsCubit>(
          create: (context) => CategoryColorsCubit(),
        ),
        BlocProvider<TasksCubit>(
          create: (context) => TasksCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          TasksView.id: (context) => TasksView(),
        },
        initialRoute: TasksView.id,
      ),
    );
  }
}
