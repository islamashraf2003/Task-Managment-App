import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc/add_task_cubit/cubit/add_tasks_cubit.dart';
import '../Model/task_model.dart';
import 'custom_elevetad_buttom.dart';
import 'custom_text_filed.dart';

class AddTaskForm extends StatefulWidget {
  AddTaskForm({
    super.key,
    this.isLoading = false,
  });
  final bool isLoading;

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  String? title, subTitle;
  int selectedRadioValue = 0;
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'New Task Todo',
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
              const SizedBox(height: 3),
              CutomTextFormFiled(
                hintText: 'Add Task Name',
                maxLines: 1,
                onSaved: (data) {
                  if (data?.isNotEmpty ?? true) {
                    title = data;
                  }
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
              const SizedBox(height: 3),
              CutomTextFormFiled(
                hintText: 'Add Description',
                maxLines: 3,
                onSaved: (data) {
                  if (data?.isNotEmpty ?? true) {
                    subTitle = data;
                  }
                },
              ),
              const SizedBox(height: 7),
              //TODO: i don't handeld this part ,soooooooon
              // const Text(
              //   'Category',
              //   maxLines: 1,
              //   overflow: TextOverflow.ellipsis,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 19,
              //   ),
              // ),

              // Row(
              //   children: [
              //     Expanded(
              //       child: RadiWidget(
              //         title: 'Learing',
              //         categoryColor: Colors.green,
              //         value: 1,
              //       ),
              //     ),
              //     Expanded(
              //       child: RadiWidget(
              //         title: 'Working',
              //         categoryColor: Colors.blue,
              //         value: 2,
              //       ),
              //     ),
              //     Expanded(
              //       child: RadiWidget(
              //         title: 'General',
              //         categoryColor: Colors.orange,
              //         value: 3,
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 14,
              ),
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
                      textName: 'Create',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          TaskModel taskModel = TaskModel(
                              title: title!,
                              subTitle: subTitle!,
                              date: DateTime.now().toString());
                          BlocProvider.of<AddTasksCubit>(context)
                              .addTask(taskModel);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
