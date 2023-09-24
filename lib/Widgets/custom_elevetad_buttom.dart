import 'package:flutter/material.dart';

class customElevetedButton extends StatelessWidget {
  VoidCallback? onPressed;
  Color? backgroundColor;
  Color? foregroundColor;
  Color? color;
  customElevetedButton(
      {this.onPressed,
      required this.textName,
      this.backgroundColor,
      this.foregroundColor,
      this.color});
  String? textName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        backgroundColor: backgroundColor,
        elevation: 0.0,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(color: Colors.blue.shade800),
      ),
      onPressed: onPressed,
      child: Text(
        '$textName',
        style: TextStyle(
          color: color,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
//Sign Up
