import 'dart:developer';

import 'package:flutter/material.dart';

class RadiWidget extends StatelessWidget {
  const RadiWidget({
    super.key,
    required this.title,
    required this.categoryColor,
    required this.value,
  });
  final String title;
  final int value;
  final Color categoryColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: categoryColor),
        child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            title: Transform.translate(
                offset: Offset(-21, 0),
                child: Text(
                  '$title',
                  style: TextStyle(
                    color: categoryColor,
                    fontWeight: FontWeight.w700,
                  ),
                )),
            value: value,
            activeColor: categoryColor,
            groupValue: 1,
            onChanged: (value) {
              log('islam');
            }),
      ),
    );
  }
}
