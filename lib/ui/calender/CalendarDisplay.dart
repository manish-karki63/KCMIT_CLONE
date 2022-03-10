import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarDisplay extends StatefulWidget {
  const CalendarDisplay({ Key? key }) : super(key: key);

  @override
  _CalendarDisplayState createState() => _CalendarDisplayState();
}

class _CalendarDisplayState extends State<CalendarDisplay> {

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();
  List<String> items = ['Today','Holiday','Exam'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2000),
      lastDay: DateTime.utc(3000),
      focusedDay: focusedDate,
      calendarFormat: format,
      onFormatChanged: (CalendarFormat _format){
        setState(() {
          format = _format;
        });
      },
      startingDayOfWeek: StartingDayOfWeek.sunday,
      onDaySelected: (DateTime selectedDay, DateTime focusedDay){
        setState(() {
          selectedDate = selectedDay;
          focusedDate = focusedDay;
        });
      },
      selectedDayPredicate: (DateTime date){
        return isSameDay(selectedDate, date);
      },
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(
          color: Colors.purpleAccent,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        )
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
    );
  }
}