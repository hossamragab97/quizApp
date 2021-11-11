import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function() restart_quiz;
  String name;
  List a;

  Result(this.restart_quiz, this.name, this.a);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'thank you  $name',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: restart_quiz,
              child: Text(
                'restart Quiz !',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(height: 20),

          Text('your answers : ',style: TextStyle(fontSize: 25,color: Colors.blue)),

          ...a.map((e) {
            return Text(e , style: TextStyle(fontSize: 25));
          }).toList(),
        ],
      ),
    );
  }
}
