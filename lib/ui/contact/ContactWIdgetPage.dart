import 'package:flutter/material.dart';

class ContactWidgetPage extends StatelessWidget {

  var icons;
  final String title; 
  final String value;
   ContactWidgetPage({ Key? key,required this.icons, required this.title, required this.value }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(5.0, 0, 0, 0)),
              Column(
                children: [
                  Container(
                    child: Icon(
                      icons,
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
                        child: Text(title),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(value),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
    );
  }
}