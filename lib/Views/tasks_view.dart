import 'package:flutter/material.dart';

import '../Widgets/add_note_bottome_sheet.dart';
import '../Widgets/custom_appBar_widget.dart';
import '../Widgets/custom_icon.dart';
import '../Widgets/custom_tasks.dart';
import '../Widgets/custom_topTitle.dart';
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
          showModalBottomSheet(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomeSheet();
            },
          );
        },
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xffE2E2E2),
      appBar: CustomAppBar(), // Use the custom AppBar here
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomTopTitle(),
          ),
          TasksList(),
        ],
      ),
    );
  }
}
