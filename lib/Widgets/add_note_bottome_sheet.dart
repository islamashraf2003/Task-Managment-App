import 'package:flutter/material.dart';

import 'add_task_form.dart';

class AddNoteBottomeSheet extends StatelessWidget {
  const AddNoteBottomeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AddTaskForm(),
    );
  }
}
