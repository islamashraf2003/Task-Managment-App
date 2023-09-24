import 'package:flutter/material.dart';

import '../Widgets/custom_elevetad_buttom.dart';
import '../Widgets/custom_icon.dart';
import '../Widgets/custom_textt_filed.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

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
            const SizedBox(height: 3),
            CutomTextFiled(
              hintText: 'Add Task Name',
              maxLines: 1,
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
            CutomTextFiled(
              hintText: 'Add Description',
              maxLines: 3,
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
                    onPressed: () {},
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
