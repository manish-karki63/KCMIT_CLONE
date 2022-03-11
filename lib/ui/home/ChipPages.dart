import 'package:flutter/material.dart';
import 'package:kcmit/model/DrawerModel.dart';
import 'package:kcmit/ui/faculty/FacultyPage.dart';

class ChipPages extends StatefulWidget {
  const ChipPages({ Key? key }) : super(key: key);

  @override
  _ChipPagesState createState() => _ChipPagesState();
}

class _ChipPagesState extends State<ChipPages> { 

  DrawerModel? dModel = new DrawerModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeValues(){
    String? abc = dModel!.rTitle();
    Widget? page = dModel!.rPages();
    setState(() {
     // drawerSelected = abc!;
      Navigator.pop(context);
      //_currentPage = page!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                //dModel!.setValue("Faculty", FacultyPage());
                //changeValues();
              },
              child: display("Faculty", "lib/assets/home/faculty.png"),
            ),

            InkWell(
              onTap: () {
                
              },
              child: display("Contact Us", "lib/assets/home/contact.png"),
            ),

            InkWell(
              onTap: () {
                
              },
              child: display("Calender", "lib/assets/home/planner.png"),
            ),
          ],
        ),
      ),
    );
  }

  Widget text(String title){
    return Text(
      title,
      style: TextStyle(color: Colors.redAccent),
      );
  }

  Widget display(String title, String img){
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            img,
            height: 70,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.redAccent
            ),
          ),
        ],
      ),
    );
  }
}