import 'package:flutter/material.dart';

import '../Widgets/custom_search_appBar.dart';
import '../Widgets/custom_text.dart';
import '../Widgets/custom_appBar.dart';

//TODO : add elevation button
/* 
  ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: const Color(0xFFD5E8FA),
              foregroundColor: Colors.blue.shade800,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              //ToDO : NOT ended ....
              //ToDO : if i clic here  add a new task .
            },
            child: Text(
              '+ New Task',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
*/
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
            fontSize: 22,
          ),
        ),
        actions: [
          CustomSearchAppBar(),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppBar(),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return CustomTask(
                title: 'FLutter ui',
                subTitle: 'dart and oop',
                time: '12:10',
              );
            },
          ))
        ],
      ),
    );
  }
}
