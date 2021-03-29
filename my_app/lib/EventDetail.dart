import 'package:flutter/material.dart';
import 'package:my_app/models/ExamEvent.dart';

class EventDetail extends StatelessWidget {
  final ExamEvent event;

  const EventDetail({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.grade.toString()),
      ),
      body: Container(
        child: Row(
          children: [
            Text(event.exam),
            Text(event.course),
            Text(event.date),
          ],
        ),
      ),
    );
  }
}