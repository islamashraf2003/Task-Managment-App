import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_task_state.dart';

class AddTaskBloc extends Cubit<AddTaskState> {
  AddTaskBloc() : super(AddTaskInitial()) {}
}
