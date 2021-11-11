import 'package:flutter/material.dart';
import 'infoName.dart';
import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  String name = '';
  int _indexQuestions = -1;
  bool darkMode = false;
  List answerOfQuestion = []..length = 3;

  final List<Map<String, Object>> _questions = [
    {
      'questions': ' 1) What\'s your favourite color ?',
      'answers': ['Black', 'Green', 'Blue', 'Yellow']
    },
    {
      'questions': ' 2) What\'s your favourite animal ?',
      'answers': ['Rabbit', 'Tiger', 'Elephant', 'Lion']
    },
    {
      'questions': ' 3) What\'s your favourite instructor ?',
      'answers': ['ahmed', 'hossam', 'mido', 'Hassan']
    },
  ];

  void _answerOfQuetion(String ans) {
    setState(() {
      answerOfQuestion[_indexQuestions] = ans;
      _indexQuestions++;
    });
  }

  void setName(String x) {
    setState(() {
      _indexQuestions++;
      name = x;
    });
  }

  void _resetQuiz() {
    setState(() {
      _indexQuestions = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  darkMode = !darkMode;
                });
              },
            ),
          ],
        ),
        body: Container(
          child: _indexQuestions == -1
              ? InfoName(setName, name)
              : _indexQuestions < _questions.length
                  ? Quiz(_questions, _indexQuestions, _answerOfQuetion)
                  : Result(_resetQuiz, name, answerOfQuestion),
        ),
        floatingActionButton: _indexQuestions < 0
            ? FloatingActionButton(onPressed: () {})
            : FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _indexQuestions != 0 ? _indexQuestions-- : () {};
                  });
                },
                child: Icon(Icons.arrow_back_rounded)),
      ),
    );
  }
}
