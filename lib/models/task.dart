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
          bgColor: Color(0xFFFFF7EC),
          iconColor: Color.fromARGB(255, 237, 224, 104),
          btnColor: Color(0xFFEBBB7F),
          left: 3,
          done: 1),
      Task(
          iconData: Icons.cases_rounded,
          title: "Personal",
          bgColor: Color(0xFFFCF0F0),
          iconColor: Colors.pink,
          btnColor: Color(0xFFF08A8E),
          left: 3,
          done: 1),
      Task(
          iconData: Icons.cases_rounded,
          title: "Personal",
          bgColor: Color(0xFFFCF0F0),
          iconColor: Colors.pink,
          btnColor: Color(0xFFF08A8E),
          left: 3,
          done: 1),
      Task(
          iconData: Icons.favorite_rounded,
          title: "Personal",
          bgColor: Color(0xFFEDF4FE),
          iconColor: Colors.blue,
          btnColor: Color(0xFFC0D3F8),
          left: 3,
          done: 1),
      Task(
          iconData: Icons.favorite_rounded,
          title: "Personal",
          bgColor: Color(0xFFEDF4FE),
          iconColor: Colors.blue,
          btnColor: Color(0xFFC0D3F8),
          left: 3,
          done: 1),
      Task(
          iconData: Icons.favorite_rounded,
          title: "Personal",
          bgColor: Color(0xFFEDF4FE),
          iconColor: Colors.blue,
          btnColor: Color(0xFFC0D3F8),
          left: 3,
          done: 1),
      Task(isLast: true)
    ];
  }
}
