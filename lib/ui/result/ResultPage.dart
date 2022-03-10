import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({ Key? key }) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  final _formKey = GlobalKey<FormState>();
  List<String> faculty = ['BIM','BBA','BCA'];
  List<String> semester = ['1st','2nd','3rd','4th','5th','6th','7th','8th','7th Finance','8th Finance','7th Marketing','8th Marketing'];
  String _selectedFaculty = "BIM";
  String _selectedSemester = "1st";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                              child: Text("Faculty"),
                            )
                          ),
                          Expanded(
                            child: DropdownButton<String>(
                              isDense: true,
                              isExpanded: true,
                              value: _selectedFaculty,
                              items: faculty.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedFaculty = newValue!;
                                });
                              },
                            ),
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
                              child: Text("Semester"),
                            )
                          ),
                          Expanded(
                            child: DropdownButton<String>(
                              isDense: true,
                              isExpanded: true,
                              value: _selectedSemester,
                              items: semester.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedSemester = newValue!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                      new MaterialButton(
                        height: 40,
                        minWidth: MediaQuery.of(context).size.width,
                        color: Colors.lightBlue[900],
                        textColor: Colors.white,
                        onPressed: () {  },
                        child: new Text("See Result"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}