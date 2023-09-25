import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddTaskLoading ? true : false,
            child: SingleChildScrollView(child: AddTaskForm()),
          );
        },
      ),
    );
  }
}
