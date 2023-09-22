import 'package:flutter/material.dart';

import 'Views/home_page.dart';

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
        HomePage.id: (context) => HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
