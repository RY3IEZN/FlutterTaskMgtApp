import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_mgt_app/screens/details_screen.dart';

import '../models/task.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (BuildContext, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(BuildContext, taskList[index], Tasks)),
    );
  }
}

_buildAddTask() {
  return DottedBorder(
    strokeWidth: 2,
    borderType: BorderType.RRect,
    radius: Radius.circular(20),
    color: Colors.grey,
    dashPattern: [10, 10],
    child: Center(
      child: Text(
        " + Add Task",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

_buildTask(BuildContext context, Task task, Tasks) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => DetailScreen(
            task,
          ),
        ),
      );
    },
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: task.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            task.iconData,
            color: task.iconColor,
            size: 35,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            task.title!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _buildTaskStatus(
                  task.btnColor!, task.iconColor!, "${task.left} Left"),
              SizedBox(
                width: 5,
              ),
              _buildTaskStatus(
                  Colors.white, task.iconColor!, "${task.done} done")
            ],
          ),
        ],
      ),
    ),
  );
}

_buildTaskStatus(Color bgColor, Color txtColor, String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: bgColor,
    ),
    child: Text(
      text,
      style: TextStyle(
        color: txtColor,
      ),
    ),
  );
}
