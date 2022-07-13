import 'package:flutter/material.dart';

class GoPremium extends StatelessWidget {
  const GoPremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Go Premium",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Get Unlimited Access\nto all our features",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}
