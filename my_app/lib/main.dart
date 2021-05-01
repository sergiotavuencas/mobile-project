import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/MyAgenda.dart';
import 'package:my_app/routes/LoginRoute.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase App',
      initialRoute: '/',
      routes: {
        '/':(context)=>LoginRoute(),
        '/app':(context)=>MyAgenda(),
      },
    );
  }
}
