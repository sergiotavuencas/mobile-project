import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubjectsTile extends StatelessWidget {
  const SubjectsTile({
    this.name,
    this.weekDay,
    this.hour,
    this.minute,
    this.meetingLink,
  });

  final String name;
  final String weekDay;
  final int hour;
  final int minute;
  final String meetingLink;

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 330,
            height: 80,
            decoration: BoxDecoration(
                color: Color(0xff1A237E),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

