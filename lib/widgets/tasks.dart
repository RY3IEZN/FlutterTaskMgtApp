import 'package:flutter/material.dart';

import '../models/task.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (BuildContext, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(BuildContext, taskList[index])),
    );
  }
}

_buildAddTask() {
  return Text("Add task");
}

_buildTask(BuildContext context, Task task) {
  return Text("Task");
}
