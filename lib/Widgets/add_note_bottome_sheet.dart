import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/Bloc/tasks_cubit/tasks_cubit.dart';
import '../Bloc/add_task_cubit/cubit/add_tasks_cubit.dart';
import 'add_task_form.dart';

class AddNoteBottomeSheet extends StatelessWidget {
  const AddNoteBottomeSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTasksCubit(),
      child: BlocConsumer<AddTasksCubit, AddTasksState>(
        listener: (context, state) {
          if (state is AddTaskFailure) {
            print('field: ${state.errorMessage}');
          }
          if (state is AddTaskSucsses) {
            BlocProvider.of<TasksCubit>(context).featchAllTasks();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
              child: AbsorbPointer(
            absorbing: state is AddTaskLoading ? true : false,
            child: AddTaskForm(
              isLoading: state is AddTaskLoading ? true : false,
            ),
          ));
        },
      ),
    );
  }
}
