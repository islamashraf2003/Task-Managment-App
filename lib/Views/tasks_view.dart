import 'package:flutter/material.dart';

import '../Widgets/custom_search_appBar.dart';
import '../Widgets/custom_text.dart';
import '../Widgets/custom_appBar.dart';
import '../Widgets/tasks_list_widget.dart';

//TODO : add elevation button
/* 
  ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: const Color(0xFFD5E8FA),
              foregroundColor: Colors.blue.shade800,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              //ToDO : NOT ended ....
              //ToDO : if i clic here  add a new task .
            },
            child: Text(
              '+ New Task',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
*/

class TasksView extends StatelessWidget {
  static String id = 'HomePage';
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle onPressed logic here
        },
        backgroundColor: Colors.black, // Change the background color
        shape: RoundedRectangleBorder(
          // Change the shape to a rounded rectangle
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xffE2E2E2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Task Managment App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          CustomSearchAppBar(),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppBar(),
          ),
          TasksList(),
        ],
      ),
    );
  }
}
