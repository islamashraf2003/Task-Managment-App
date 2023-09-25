import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:taskes_app/Model/task_model.dart';

part 'add_tasks_state.dart';

class AddTasksCubit extends Cubit<AddTasksState> {
  AddTasksCubit() : super(AddTaskInitial());

  addTask(TaskModel task) async {
    emit(AddTaskLoading());
    try {
      var tasksBox = Hive.box<TaskModel>('Tasks_Box');
      await tasksBox.add(task);
      emit(AddTaskSucsses());
    } catch (e) {
      emit(AddTaskFailure(errorMessage: e.toString()));
    }
  }
}
