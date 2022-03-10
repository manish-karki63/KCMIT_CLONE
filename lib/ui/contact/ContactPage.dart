import 'package:flutter/material.dart';
import 'package:kcmit/ui/contact/ContactWIdgetPage.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(6.0)),

          ContactWidgetPage(icons: Icons.phone,title: "Telephone", value: "+977-1-4479939",),

          Divider(
            color: Colors.redAccent,
            thickness: 1.0,
            indent: 15.0,
            endIndent: 15.0,
          ),

          ContactWidgetPage(icons: Icons.location_on,title: "Address", value: "Basuki Marg, Mid Baneshwor",),

          Divider(
            color: Colors.redAccent,
            thickness: 1.0,
            indent: 15.0,
            endIndent: 15.0,
          ),

          ContactWidgetPage(icons: Icons.mail,title: "E-Mail", value: "kcmitcollege@gmail.com",),

          Divider(
            color: Colors.redAccent,
            thickness: 1.0,
            indent: 15.0,
            endIndent: 15.0,
          ),

          ContactWidgetPage(icons: Icons.web_sharp,title: "Web Address", value: "www.kcmit.edu.np",),

          Divider(
            color: Colors.redAccent,
            thickness: 1.0,
            indent: 15.0,
            endIndent: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(5.0, 0, 0, 0)),
              Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text('Office Hours'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('7am-4pm'),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Sunday To Friday',
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}