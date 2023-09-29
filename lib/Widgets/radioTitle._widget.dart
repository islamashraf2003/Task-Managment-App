import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskes_app/Bloc/category_color/category_colors_cubit.dart';

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
  //todo: try handel this value
  static int indexColor = 0;
  @override
  Widget build(BuildContext context) {
    final categoryColorsCubit = BlocProvider.of<CategoryColorsCubit>(context);
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
                  fontSize: 13,
                  color: categoryColor,
                  fontWeight: FontWeight.w700,
                ),
              )),
          value: value,
          activeColor: categoryColor,
          groupValue: categoryColorsCubit.indexColor,
          onChanged: (value) {
            if (value != null) {
              switch (value) {
                case 1:
                  categoryColorsCubit.getGreen();

                  break;
                case 2:
                  categoryColorsCubit.getBlue();
                  break;
                case 3:
                  categoryColorsCubit.getOrange();
                  break;
              }
            }
          },
        ),
      ),
    );
  }
}
