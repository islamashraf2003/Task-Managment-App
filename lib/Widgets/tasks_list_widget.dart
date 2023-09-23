import 'package:flutter/cupertino.dart';

import 'custom_text.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 1,
      (context, index) {
        return CustomTask(
          title: 'FLutter ui',
          subTitle: 'dart and oop',
          time: '12:10',
        );
      },
    ));
  }
}
