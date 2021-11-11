import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final _Answers;
  final Function(String a) x;
   Answers(this.x,this._Answers);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),

      child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0, 15, 0, 15)),
          ),
        child: Text(_Answers,
         style: TextStyle(
            fontSize: 20,

        ),
         ),
        onPressed: () {
          x(_Answers);
        }
    ),
    );
    }
  }

