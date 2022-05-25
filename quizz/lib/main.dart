import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(const Quizzz());
}

class Quizzz extends StatefulWidget {
  const Quizzz({Key? key}) : super(key: key);
  @override
  State<Quizzz> createState() => _QuizzzState();
}

class _QuizzzState extends State<Quizzz> {
  var index = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      index++;
    });
  }

  void _resetQuiz() {
    setState(() {
      index = 0;
      _totalScore = 0;
    });
  }

  // ignore: unused_field
  final _questions = [
    {
      'questionText': '25*4 = ',
      'answers': [
        {'text': '100', 'score': 10},
        {'text': '200', 'score': 0},
        {'text': '300', 'score': 0},
        {'text': '400', 'score': 0}
      ]
    },
    {
      'questionText': 'Chemical notation of Oxygen atom is:',
      'answers': [
        {'text': 'OXY', 'score': 0},
        {'text': 'OO', 'score': 0},
        {'text': 'O', 'score': 10},
        {'text': 'None of the above', 'score': 0}
      ]
    },
    {
      'questionText': '"Dust thou art,to dust returnest" was said by :',
      'answers': [
        {'text': 'Alfred Tennyson', 'score': 0},
        {'text': 'Henry Longfellow', 'score': 10},
        {'text': 'Tom Holland', 'score': 0},
        {'text': ' Sarojni Naidu', 'score': 0}
      ]
    },
    {
      'questionText': 'Bonne Nuit translated in english is:',
      'answers': [
        {'text': 'Good Noon', 'score': 0},
        {'text': 'Hello', 'score': 0},
        {'text': ' Good Done', 'score': 0},
        {'text': 'Good Night', 'score': 10}
      ]
    },
    {
      'questionText': 'a multiplied by 0:',
      'answers': [
        {'text': '0a', 'score': 0},
        {'text': '0', 'score': 10},
        {'text': 'a0', 'score': 0},
        {'text': ' None of the above', 'score': 0}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Quizzz'),
        backgroundColor: Colors.indigo,
      ),
      body: index < _questions.length
          ? Quiz(_answerQuestion, index, _questions)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
