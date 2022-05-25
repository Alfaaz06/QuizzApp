// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;
  // ignore_for_file: prefer_const_constructors_in_immutables
  Result(this.score, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'Your score is $score',
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        // ignore: deprecated_member_use
        FlatButton(onPressed: resetHandler, child: const Text('Restart Quiz'))
      ],
    ));
  }
}
