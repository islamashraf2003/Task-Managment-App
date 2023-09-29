import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/Bloc/tasks_cubit/tasks_cubit.dart';
import 'package:taskes_app/Model/task_model.dart';
import 'package:intl/intl.dart';

import '../Views/edit_note_view.dart';

class CustomTask extends StatelessWidget {
  final bool isChecked; // Add a boolean value to manage the checkbox state
  final TaskModel tasksModel;
  const CustomTask({
    Key? key,
    required this.tasksModel,
    this.isChecked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      if (tasksModel.category == 1) {
        return Colors.green;
      }
      if (tasksModel.category == 2) {
        return Colors.blue;
      }
      if (tasksModel.category == 3) {
        return Colors.orange;
      }

      return Colors.white;
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(
            taskModel: tasksModel,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: Container(
                width: 17,
                height: 115,
                decoration: BoxDecoration(
                  color: getColor(),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Transform.scale(
              scale: 1.3,
              child: Checkbox(
                activeColor: Colors.blue.shade500,
                shape: CircleBorder(),
                value: isChecked,
                onChanged: (newValue) {
                  tasksModel.delete();
                  BlocProvider.of<TasksCubit>(context).featchAllTasks();
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${tasksModel.title}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${tasksModel.subTitle}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.grey.shade200,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Color.fromARGB(255, 4, 94, 147),
                          size: 15,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Time ${DateFormat('h:mm a').format(DateTime.parse(tasksModel.date))} ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 4, 94, 147),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          ', ${DateFormat('EEEE').format(DateTime.parse(tasksModel.date))}',
                          style: TextStyle(
                            color: Color.fromARGB(255, 4, 94, 147),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
