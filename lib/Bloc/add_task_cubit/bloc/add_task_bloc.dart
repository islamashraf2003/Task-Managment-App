import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_task_event.dart';
part 'add_task_state.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc() : super(AddTaskInitial()) {
    on<AddTaskEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
