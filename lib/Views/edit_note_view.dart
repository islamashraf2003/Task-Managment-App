import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/Bloc/tasks_cubit/tasks_cubit.dart';
import 'package:taskes_app/Model/task_model.dart';

import '../Widgets/custom_elevetad_buttom.dart';
import '../Widgets/custom_text_filed.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E2E2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Center(
              child: Text(
                'Edit Task',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const Divider(
              height: 25,
              thickness: .9,
              color: Colors.grey,
            ),
            const SizedBox(height: 7),
            const Text(
              'Title Task',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 5),
            CutomTextFormFiled(
              hintText: widget.taskModel.title,
              maxLines: 1,
              onChanged: (data) {
                title = data;
              },
            ),
            const SizedBox(height: 10),
            const Text(
              'Description',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 5),
            CutomTextFormFiled(
              hintText: widget.taskModel.subTitle,
              maxLines: 3,
              onChanged: (data) {
                subTitle = data;
              },
            ),
            const SizedBox(height: 35),
            Row(
              children: [
                Expanded(
                  child: customElevetedButton(
                    textName: 'Cansel',
                    color: Colors.blue.shade800,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade800,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: customElevetedButton(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    textName: 'Done',
                    onPressed: () {
                      widget.taskModel.title = title ?? widget.taskModel.title;
                      widget.taskModel.subTitle =
                          subTitle ?? widget.taskModel.subTitle;
                      widget.taskModel.save();
                      BlocProvider.of<TasksCubit>(context).featchAllTasks();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
