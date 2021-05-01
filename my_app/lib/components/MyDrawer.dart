import 'package:flutter/material.dart';
import 'package:my_app/routes/DatesRoute.dart';
import 'package:my_app/routes/SubjectRoute.dart';

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
            title: Text("Dates"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DatesRoute()),
              );
            },
          ),
          ListTile(
            title: Text("Subjects"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectsRoute()),
              );
            },
          )
        ],
      ),
    );
  }
}