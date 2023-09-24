part of 'add_task_bloc.dart';

@immutable
abstract class AddTaskState {}

class AddTaskInitial extends AddTaskState {}

class AddTaskLoading extends AddTaskState {}

class AddTaskSucsses extends AddTaskState {}

class AddTaskFailure extends AddTaskState {
  final String errorMessage;

  AddTaskFailure({required this.errorMessage});
}
