part of 'add_tasks_cubit.dart';

@immutable
class AddTasksState {}

class AddTaskInitial extends AddTasksState {}

class AddTaskLoading extends AddTasksState {}

class AddTaskSucsses extends AddTasksState {}

class AddTaskFailure extends AddTasksState {
  final String errorMessage;

  AddTaskFailure({required this.errorMessage});
}
