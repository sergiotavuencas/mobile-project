import 'package:flutter/material.dart';
import 'package:my_app/components/MyDrawer.dart';
import 'package:my_app/routes/ProfileRoute.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyAgenda extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;

  const MyAgenda({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Agenda",
      color: Color(0xff1A237E),
      home: Scaffold (
        drawer: MyDrawer(),
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
          actions: [
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
              print('exit');
              auth.signOut();
              Navigator.of(context).pushNamed("/");
            })
          ],
        ),
        body: ProfileRoute(
          firstName: "Sérgio",
          lastName: "Tavuencas",
          college: "Engenharia de Computação",
        ),
      ),
    );
  }
}