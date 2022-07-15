import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekList = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  final dayList = [
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
  ];

  var selected = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: weekList.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 5,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => setState(() {
              selected = index;
            }),
            child: Container(
              padding: EdgeInsets.all(9.5),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selected == index ? Colors.grey : null),
              child: Column(
                children: [
                  Text(
                    weekList[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selected == index ? Colors.black : Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    dayList[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selected == index ? Colors.black : Colors.grey),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}