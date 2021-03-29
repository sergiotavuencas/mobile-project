import 'package:flutter/material.dart';
import 'package:my_app/models/Exam.dart';


class ExamDetail extends StatelessWidget {
  final Exam exam;

  const ExamDetail({Key key, this.exam}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exam.grade),
      ),
      body: Container(
        child: Row(
          children: [
            Text(exam.exam),
            Text(exam.course),
            Text(exam.date),
          ],
        ),
      ),
    );
  }
}