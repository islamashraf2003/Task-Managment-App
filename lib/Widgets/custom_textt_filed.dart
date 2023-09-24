import 'package:flutter/material.dart';

class CutomTextFiled extends StatelessWidget {
  String? hintText;
  int? maxLines;
  Function(String)? onChanged;

  CutomTextFiled({this.hintText, this.onChanged, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLines: maxLines,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
