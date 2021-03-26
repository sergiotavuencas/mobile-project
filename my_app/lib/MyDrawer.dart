import 'package:flutter/material.dart';
import 'package:my_app/FirstRoute.dart';

import 'SecondRoute.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("First screen"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstRoute()),
              );
            },
          ),
          ListTile(
            title: Text("Second screen"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          )
        ],
      ),
    );
  }
}