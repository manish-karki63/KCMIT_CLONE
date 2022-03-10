import 'package:flutter/material.dart';
import 'package:kcmit/ui/about/About.dart';
import 'package:kcmit/ui/attendance/AttendancePage.dart';
import 'package:kcmit/ui/blog/Blog.dart';
import 'package:kcmit/ui/calender/Calender.dart';
import 'package:kcmit/ui/contact/ContactPage.dart';
import 'package:kcmit/ui/faculty/FacultyPage.dart';
import 'package:kcmit/ui/gallery/GalleryPage.dart';
import 'package:kcmit/ui/home/DrawerWidget.dart';
import 'package:kcmit/ui/home/HomePageContainer.dart';
import 'package:kcmit/ui/notice/NoticePage.dart';
import 'package:kcmit/ui/resources/ResourcesPage.dart';
import 'package:kcmit/ui/result/ResultPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String drawerSelected = "KCMITians";
  Widget _currentPage = HomePageContainer();

  @override
  void initState() {
    super.initState();
  }

  void changeValue(String title, Widget pages){
    setState(() {
      drawerSelected = title;
      Navigator.pop(context);
      _currentPage = pages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          drawerSelected,
          style: TextStyle(
            fontSize: 13.0,
          ),
        ),
        backgroundColor: Colors.lightBlue[900],
        actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  child: ListTile(
                    title: Text('Share App'),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    title: Text('Rate Us'),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Disclaimer'),
                  ),
                ),
              ],
          ),
        ],
      ),

      drawer: Container(
        width: MediaQuery.of(context).size.height / 3.3,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerWidget(),
              new ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  changeValue('KCMITians', HomePageContainer());
                },
              ),
              new ListTile(
                leading: Icon(Icons.description_sharp),
                title: Text("Notice"),
                onTap: () {
                  changeValue("Notice", NoticePage());
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.download_sharp),
                title: Text("Resource"),
                onTap: () {
                  changeValue("Resources", ResourcesPage());
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.assignment_turned_in_sharp),
                title: Text("Attendance"),
                onTap: () {
                  changeValue("Attendance", AttendancePage());
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.date_range_sharp),
                title: Text("Academic Calender"),
                onTap: () {
                  changeValue("Academic Calender", Calender());
                },
              ),
              new ListTile(
                leading: Icon(Icons.photo_library_sharp),
                title: Text("Gallery"),
                onTap: () {
                  changeValue("Gallery", GalleryPage());
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.format_bold_sharp),
                title: Text("Blog"),
                onTap: () {
                  changeValue("Blog", Blog());
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.person),
                title: Text("Faculty"),
                onTap: () {
                  changeValue("Faculty", FacultyPage());
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.access_time),
                title: Text("Routine"), 
              ),
              new ListTile(
                leading: Icon(Icons.forum_sharp),
                title: Text("Discussion"), 
              ),
              new ListTile(
                leading: Icon(Icons.assignment_turned_in_sharp),
                title: Text("Result"),
                onTap: () {
                  changeValue("Result", ResultPage());
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.psychology_sharp),
                title: Text("About"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                }, 
              ),
              new ListTile(
                leading: Icon(Icons.logout_sharp),
                title: Text("Logout") 
              ),
              new ListTile(
                title: Text("Communicate",
                style: TextStyle(
                  fontSize: 11,
                ),  
              ), 
              ),
              new ListTile(
                leading: Icon(Icons.phone),
                title: Text("Contact Us"),
                onTap: () {
                  setState(() {
                    drawerSelected = 'Contact Us';
                    Navigator.pop(context);
                    _currentPage = ContactPage();
                  });
                }, 
              ),
            ],
          ),
        ),
      ),

      body: _currentPage,
    );
  }
}