import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/MyAgenda.dart';

class LoginRoute extends StatefulWidget {
  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  String _email, _password;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1A237E),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB( 0, 0, 0, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0x64ffffff),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    style: TextStyle(
                        color: Colors.white
                    ),
                    onChanged: (value) {
                      setState(() {
                        _email = value.trim(); //remove whitespace
                      });
                    },
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0x64ffffff),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.white
                  ),
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim(); //remove whitespace
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB( 0, 15, 10, 0),
                      child:
                      // ignore: deprecated_member_use
                      RaisedButton(
                          child: Text("Login"),
                          onPressed: () async {
                            try {
                              var authUser = await auth.signInWithEmailAndPassword(
                                  email: _email, password: _password);
                              if(authUser!=null){
                                print(authUser);

                                print("Login Success");
                                Navigator.of(context).pushNamed("/app");
                              }
                              else{
                                print("Login Error");
                              }

                            } on FirebaseAuthException catch (e) {
                              print(e);
                            }
                          }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB( 10, 15, 0, 0),
                      child:
                        // ignore: deprecated_member_use
                        RaisedButton(
                            child: Text("Sign-Up"),
                            onPressed: () {
                              try {
                                auth.createUserWithEmailAndPassword(
                                    email: _email, password: _password);
                              } catch (e) {
                                print("Error on signup " + e);
                              }
                            }
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}