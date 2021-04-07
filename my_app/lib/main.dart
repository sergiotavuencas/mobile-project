import 'package:flutter/material.dart';
import 'package:my_app/ProfileTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      home: Scaffold (
        //drawer: MyDrawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff1A237E),
          title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
        ),
        body: ProfileTile(
          firstName: "Sérgio",
          lastName: "Tavuencas",
          college: "Engenharia de Computação",
        ),
      ),
    );
  }
}

/*
<Widget>[
Icon(FontAwesomeIcons.android, size: 50),
*/