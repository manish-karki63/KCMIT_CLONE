import 'package:flutter/material.dart';


class AttendancePage extends StatefulWidget {
  const AttendancePage({ Key? key }) : super(key: key);

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {

  List<String> section = ['A','B'];
  String _selectedSection = "A";

  DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(2000);
  final lastDate = DateTime(3000);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[


          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              )
            ),
            padding: EdgeInsets.all(3.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Text("User Category:"),
                  )
                ),
                Expanded(
                  child: Container(
                    child: Text("BIM2017"),
                  )
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              )
            ),
            padding: EdgeInsets.all(3.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Text("Section"),
                  )
                ),
                Expanded(
                  child: DropdownButton<String>(
                    isDense: true,
                    isExpanded: true,
                    value: _selectedSection,
                    items: section.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedSection = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          Center(
            child: ElevatedButton(
              onPressed: () => _openDatePicker(context),
              child: Text('$selectedDate'.split(' ')[0]),
            ),
          ),
        ],
      ),
    );
  }

  _openDatePicker(BuildContext context) async{
    final DateTime? date = await showDatePicker(
      context: context, 
      initialDate: selectedDate, 
      firstDate: firstDate, 
      lastDate: lastDate
    );

    if(date != null){
      setState(() {
        selectedDate = date;
      });
    }
  }
}