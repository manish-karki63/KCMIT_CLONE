import 'package:flutter/material.dart';
import 'package:kcmit/ui/calender/CalendarDisplay.dart';
import 'package:kcmit/ui/calender/CalendarEvent.dart';

class Calender extends StatefulWidget {
  const Calender({ Key? key }) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CalendarDisplay()
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CalendarEvent(color: Colors.green, name: 'Today'),
                Padding(padding: EdgeInsets.fromLTRB(0, 6.0, 0, 0)),
                
                CalendarEvent(color: Colors.red, name: 'Holiday'),
                Padding(padding: EdgeInsets.fromLTRB(0, 6.0, 0, 0)),

                CalendarEvent(color: Colors.redAccent, name: 'Exam'),
                Padding(padding: EdgeInsets.fromLTRB(0, 6.0, 0, 0)),

                CalendarEvent(color: Colors.blue, name: 'Fee Submit Date'),
                Padding(padding: EdgeInsets.fromLTRB(0, 6.0, 0, 0)),

                CalendarEvent(color: Colors.lightGreen, name: 'Class Start Date'),
                Padding(padding: EdgeInsets.fromLTRB(0, 6.0, 0, 0)),

                CalendarEvent(color: Colors.purple, name: 'Other Events'),
              ],
            ),
          ],
        ),

      ],
    );
  }
}