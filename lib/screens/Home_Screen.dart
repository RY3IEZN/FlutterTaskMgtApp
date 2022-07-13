import 'package:flutter/material.dart';
import 'package:flutter_task_mgt_app/widgets/go_premium.dart';
import 'package:flutter_task_mgt_app/widgets/tasks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/avatar.jpg"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Hi, Uneku",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Tasks to do",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Expanded(child: Tasks())
        ],
      ),
    );
  }
}
