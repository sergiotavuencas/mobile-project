import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/routes/DatesRoute.dart';
import 'package:my_app/routes/SubjectRoute.dart';


class ProfileButtons extends StatelessWidget {
  const ProfileButtons({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Container(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 300,
                      minHeight: 60,
                    ),
                    child: ElevatedButton(
                      child: Container(
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(FontAwesomeIcons.calendarAlt)
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only( left: 50.0 , right: 50.0),
                              child: Text("Dates")
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Icon(FontAwesomeIcons.angleRight)
                            ),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff283593),
                        textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DatesRoute()));
                      }
                    )
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Container(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 300,
                          minHeight: 60,
                        ),
                        child: ElevatedButton(
                            child: Container(
                              child: Row(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(FontAwesomeIcons.list)
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only( left: 35.0 , right: 35.0),
                                      child: Text("Subjects")
                                  ),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(FontAwesomeIcons.angleRight)
                                  ),
                                ],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff5C6BC0),
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SubjectsRoute()));
                            }
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Container(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 300,
                          minHeight: 60,
                        ),
                        child: ElevatedButton(
                            child: Container(
                              child: Row(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(FontAwesomeIcons.bookOpen)
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only( left: 40.0 , right: 40.0),
                                      child: Text("Grades")
                                  ),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(FontAwesomeIcons.angleRight)
                                  ),
                                ],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff5C6BC0),
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            onPressed: (){
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => GradesRoute()));
                            }
                        )
                    )
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}