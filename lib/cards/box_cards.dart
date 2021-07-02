import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  Boxes({this.songName});
  final String? songName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.teal,
          ),
          // Yellow
          height: 180.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "$songName",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 80.0,
        )
      ],
    );
  }
}
