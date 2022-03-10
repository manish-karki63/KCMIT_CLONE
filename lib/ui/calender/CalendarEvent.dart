import 'package:flutter/material.dart';

class CalendarEvent extends StatelessWidget {

  final String name;
  final Color color;
  const CalendarEvent({ Key? key, required this.color, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Padding(padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0)),
        Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: color,
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(9.0, 0, 0, 0)),
        Container(
              child: Text(name),
        )
      ],
    );
  }
}