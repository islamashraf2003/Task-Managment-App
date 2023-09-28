import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:taskes_app/Model/task_model.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksInitial());
  List<TaskModel>? tasksModel;
  featchAllTasks() {
    var tasksBox = Hive.box<TaskModel>('Tasks_Box');
    tasksModel = tasksBox.values.toList();
    emit(TasksSucsses());
  }
}
