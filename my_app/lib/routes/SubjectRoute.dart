import 'package:flutter/material.dart';
import 'package:my_app/details/SubjectDetail.dart';
import 'package:my_app/models/Subject.dart';
import 'package:my_app/tiles/SubjectsTile.dart';

class SubjectsRoute extends StatelessWidget {
  final subjects = List<Subject>.generate(
    10, (index) => Subject(
      "Desenvolvimento Mobile",
      "Quinta-feira",
      19,
      00,
      "link"
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff9FA8DA),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff283593),
          title: Text(
            "Subjects",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: subjects.length,
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SubjectDetail(subject: subjects[index]), ), );
                },
                child: SubjectsTile(
                  name: subjects[index].name,
                  weekDay: subjects[index].weekDay,
                  minute: subjects[index].hour,
                  hour: subjects[index].minute,
                  meetingLink: subjects[index].meetingLink,
                ),
              );
            }
        )
    );
  }
}