import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconAppBar extends StatelessWidget {
  final IconData icon;
  const CustomIconAppBar({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 48,
        height: 48,
        color: Colors.blue.shade800,
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
