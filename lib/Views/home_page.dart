import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E2E2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Task Managment App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 132,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topLeft: Radius.circular(12)),
                    ),
                    width: 13,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
