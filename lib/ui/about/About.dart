import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key); 

  final String BIM = "BIM Program provides an interdisciplinary education for students interested in Information Technology and Management with major focus on IT. To be IT professionals proficient in the use of computers and computational techniques, in order to develop effective information systems, to solve real life problems in the organizational milieu, develop skills in object-oriented software design methods and data management systems.";
  final String BBA = "BBA program provides an interdisciplanary education for students interested in Management and IT with major focus in Management. BBA cover a balanced curriculum between the different business disciplines, supported by the development of applied business skills and an understanding of the business world.";
  final String BCA = "BCA is an information Technology based program that awards the undergraduate degree in Computer Applications. This program provides a sound academic base for an advanced career in computer application. Students learn to solve computer based problems of different types of business and industries.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(
          'KCMITians',
          style: TextStyle(
            fontSize: 13.0,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 1.0, 0, 0),
          ),
          Card(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: Center(
                    child: Text(
                      'Welcome To KCMITians App',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      'Official app of KCMIT',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

           SizedBox(
             height: 2.0,
           ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Center(
                    child: Text(
                      'Programs Offered',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,6.0,0,0),
                      child: Text(
                        'BIM | BBA | BCA',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 2.0,
          ),
          display("BIM", BIM),

          SizedBox(
            height: 2.0,
          ),
          display("BBA", BBA), 

          SizedBox(
            height: 2.0,
          ),
          display("BCA", BCA),
        ],
      ),
    );
  }

  Widget display(String title, String disc){
    return Card(
            child: Container(
              padding: EdgeInsets.fromLTRB(3.0,9.0,3.0,9.0),  
              child: Column(
                children: [
                    Center(
                      child: Text(
                        'Why ${title}?',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ),
                    Text(
                      disc,
                      style: TextStyle(fontSize: 12.0),
                    ),
                ],
              ),
            ),
          );
  }
}