import 'package:flutter/material.dart';
import 'package:my_app/details/DateDetail.dart';
import 'package:my_app/models/Date.dart';
import 'package:my_app/tiles/DatesTile.dart';

class DatesRoute extends StatelessWidget {
  final dates = List<Date>.generate(10, (index) => Date(
      12,
      'Apr.',
      2021,
      23,
      59,
      'Avaliação Continuada 1',
      'Desenvolvimento Mobile',
      'Desenhar mockups e protótipos com diferentes screens;\n\n' +
      'Implementar e integrar multiplos elementos;\n\n' +
      'Sistema de rotas lógicas e funcionais;\n\n' +
      'Padrões de desenvolvimento.',
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
          "Dates",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: dates.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DateDetail(date: dates[index]), ), );
            },
            child: DatesTile(
              day: dates[index].day.toString(),
              month: dates[index].month,
              year: dates[index].year.toString(),
              hour: dates[index].hour.toString(),
              minute: dates[index].minute.toString(),
              event: dates[index].event,
              subject: dates[index].subject,
              description: dates[index].description,
            ),
          );
        }
      )
    );
  }
}