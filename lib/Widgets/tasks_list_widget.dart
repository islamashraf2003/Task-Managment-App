import 'package:flutter/cupertino.dart';

import 'custom_tasks.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 4,
      (context, index) {
        return CustomTask(
          title: 'FLutter ui',
          subTitle: 'dart & oop',
          time: '12:10',
        );
      },
    ));
  }
}
