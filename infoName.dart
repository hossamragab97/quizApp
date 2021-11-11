import 'package:flutter/material.dart';

class InfoName extends StatelessWidget {
  String name='';
  Function(String q) setName;
   InfoName(this.setName,this.name);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TextField(
            decoration: const InputDecoration(
              labelText: 'enter your name to go quiz',
            ),
            onChanged: (value) => name = value),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: (){
            setName(name);
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
