import 'package:flutter/material.dart';
import 'package:my_app/EventDetail.dart';
import 'package:my_app/models/ExamEvent.dart';

import 'ExamTile.dart';

class FirstRoute extends StatelessWidget {
  final events = List<ExamEvent>.generate(20, (index) => ExamEvent(
    10.0,
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
        itemCount: events.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetail(event: events[index]))
              );
              child: ExamTile(
                grade: events[index].grade,
                exam: events[index].exam,
                course: events[index].course,
                date: events[index].date,
              );
            }
          );
        },
      ),
    );
  }
}

