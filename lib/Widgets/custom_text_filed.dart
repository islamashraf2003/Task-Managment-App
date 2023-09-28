import 'package:flutter/material.dart';

//CutomTextFormFiled
class CutomTextFormFiled extends StatelessWidget {
  String? hintText;
  int? maxLines;
  void Function(String)? onChanged;
  void Function(String?)? onSaved;

  CutomTextFormFiled(
      {this.hintText, this.onSaved, this.maxLines, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is Required';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        onSaved: onSaved,
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
