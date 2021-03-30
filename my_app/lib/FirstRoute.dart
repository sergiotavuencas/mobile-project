import 'package:flutter/material.dart';
import 'package:my_app/ExamDetail.dart';
import 'package:my_app/models/Exam.dart';

import 'ExamTile.dart';

class FirstRoute extends StatelessWidget {
  final exams = List<Exam>.generate(20, (index) => Exam(
    "10.0",
    "AF - Avaliação Final",
    "Computação Gráfica II",
    "29/03/2021"
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ExamDetail(exam: exams[index]))
              );
            },
            child: ExamTile(
              grade: exams[index].grade,
              exam: exams[index].exam,
              course: exams[index].course,
              date: exams[index].date,
            ),
          );
        }
      )
    );
    }
  }

