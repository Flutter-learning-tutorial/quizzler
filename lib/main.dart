// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quizzler/quize_brain.dart';

void main() {
  runApp(QuizzApp());
}

class QuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizzPage(),
    );
  }
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  QuizeBrain quizeBrain = QuizeBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: Text(
          "Quizz",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      quizeBrain.getQuestion(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      bool correctAnswer = quizeBrain.getCorrectAnswer();
                      if (correctAnswer == true) {
                        print("corrct answer");
                      } else {
                        print("wrong answer");
                      }
                      setState(() {
                        quizeBrain.nextQuestion();
                      });
                    },
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      bool correctAnswer = quizeBrain.getCorrectAnswer();
                      if (correctAnswer == false) {
                        print("corrct answer");
                      } else {
                        print("wrong answer");
                      }
                      setState(() {
                        quizeBrain.nextQuestion();
                      });
                    },
                    child: Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
