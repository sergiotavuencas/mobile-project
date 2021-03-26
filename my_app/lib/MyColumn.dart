import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.indigo,
                height: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.indigoAccent,
                height: 100,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.indigoAccent,
                height: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.indigo,
                height: 100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}