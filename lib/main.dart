import 'package:flutter/material.dart';
import 'package:flutter_task_mgt_app/screens/Home_Screen.dart';

void main() {
  runApp(const TaskMgt());
}

class TaskMgt extends StatelessWidget {
  const TaskMgt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Mgt App",
      home: HomeScreen(),
    );
  }
}
