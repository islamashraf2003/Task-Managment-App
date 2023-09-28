import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/Bloc/tasks_cubit/tasks_cubit.dart';

import '../Widgets/add_note_bottome_sheet.dart';
import '../Widgets/custom_appBar_widget.dart';
import '../Widgets/custom_topTitle.dart';
import '../Widgets/tasks_list_widget.dart';

class TasksView extends StatefulWidget {
  static String id = 'HomePage';
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  void initState() {
    BlocProvider.of<TasksCubit>(context).featchAllTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
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
