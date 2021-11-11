import 'package:flutter/material.dart';

class Questions extends StatelessWidget {

  final _question;
   Questions(this._question);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(_question,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
