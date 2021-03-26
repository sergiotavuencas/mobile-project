import 'package:flutter/material.dart';
import 'package:my_app/MyDrawer.dart';

import 'MyColumn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      home: Scaffold (
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: MyColumn()
      ),
    );
  }
}

