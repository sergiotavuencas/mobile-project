import 'package:flutter/material.dart';
import 'package:my_app/components/ProfileButtons.dart';

class ProfileRoute extends StatelessWidget {
  const ProfileRoute({
    this.firstName,
    this.lastName,
    this.college,
  });

  final String firstName;
  final String lastName;
  final String college;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Container(
            color: Color(0xff9FA8DA),
            width: 360,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB( 0, 15, 0, 0),
                      child: Text(
                        firstName + " " + lastName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB( 0, 10, 0, 0),
                      child: Text(
                        college,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: CircleAvatar(
                        //backgroundImage: AssetImage('assets/table_cat.png'),
                        radius: 80,
                        backgroundColor: Color(0xff1A237E),
                        child: Text(
                            firstName[0] + lastName[0],
                            style: TextStyle(
                                fontSize: 90,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                       padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                       child:ProfileButtons(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}