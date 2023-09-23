import 'dart:math';

import 'package:flutter/material.dart';

class CustomTask extends StatelessWidget {
  final String title, subTitle, time;
  final bool isChecked; // Add a boolean value to manage the checkbox state

  //TODO: FUNCTION TO CHANGE THE COLOR OF CONTUNER

  Color getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256), // Red channel
      random.nextInt(256), // Green channel
      random.nextInt(256), // Blue channel
      1.0, // Alpha (opacity)
    );
  }

  const CustomTask({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.time,
    this.isChecked = true, // Default to unchecked
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 0,
            child: Container(
              width: 15,
              height: 115,
              decoration: BoxDecoration(
                color: getRandomColor(),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Transform.scale(
            scale: 1.3, // Adjust the scale factor as needed
            child: Checkbox(
              activeColor: Colors.blue.shade500,
              shape: CircleBorder(),
              value: isChecked,
              onChanged: (newValue) {
                // Handle checkbox state changes here
                // You can use a callback to update the state in the parent widget
              },
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '$subTitle',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.orange.shade800,
                        size: 15,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Today ${time} PM',
                        style: TextStyle(
                          color: Colors.orange.shade800,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
