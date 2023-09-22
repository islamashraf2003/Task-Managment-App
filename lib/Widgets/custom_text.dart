import 'package:flutter/material.dart';

class CustomTask extends StatelessWidget {
  final String title, subTitle, time;
  final bool isChecked; // Add a boolean value to manage the checkbox state

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
              height: 112,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Checkbox(
            activeColor: Colors.blue.shade500,
            shape: CircleBorder(),
            value: isChecked,
            onChanged: (newValue) {
              // Handle checkbox state changes here
              // You can use a callback to update the state in the parent widget
            },
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
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.green,
                        size: 15,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Today ${time} PM',
                        style: TextStyle(
                          color: Colors.green,
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
