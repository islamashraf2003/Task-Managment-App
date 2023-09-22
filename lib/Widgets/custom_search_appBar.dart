import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black87,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
