import 'package:flutter/material.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  bool isLast;
  num? left;
  num? done;

  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.isLast = false,
      this.left,
      this.done});

  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: "Personal",
          bgColor: Colors.yellow,
          iconColor: Colors.yellow,
          btnColor: Colors.amber,
          left: 3,
          done: 1),
      Task(
          iconData: Icons.cases_rounded,
          title: "Personal",
          bgColor: Colors.red,
          iconColor: Colors.red,
          btnColor: Colors.amber,
          left: 3,
          done: 1),
      Task(
          iconData: Icons.favorite_rounded,
          title: "Personal",
          bgColor: Colors.blue,
          iconColor: Colors.blue,
          btnColor: Colors.amber,
          left: 3,
          done: 1),
      Task(isLast: true)
    ];
  }
}
