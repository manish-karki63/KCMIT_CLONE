import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserAccountsDrawerHeader(
          accountName: Text("Manish Karki"),
          accountEmail: Text("manish.karki33@gmail.com"),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.transparent,
              backgroundImage: ExactAssetImage('lib/assets/useravatar/avatar00.png'),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('lib/assets/images/abc.jfif'),
              fit: BoxFit.cover,
            ),
          ),
        ),
    );
  }
}