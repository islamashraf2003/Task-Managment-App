import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/Bloc/tasks_cubit/tasks_cubit.dart';
import 'package:taskes_app/Model/task_model.dart';

import 'custom_tasks.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        var tasks = BlocProvider.of<TasksCubit>(context).tasksModel ?? [];
        return SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: tasks.length,
          (context, index) {
            return CustomTask(
              tasksModel: tasks[index],
            );
          },
        ));
      },
    );
  }
}
