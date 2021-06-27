import 'package:quizzler/questions.dart';

class QuizeBrain {
  int _questionNumber = 0;

  List<Questions> _questionBank = [
    Questions(q: 'Are you Indian?', a: true),
    Questions(q: 'Do you have a car?', a: true),
    Questions(q: 'Can we go out?', a: true),
    Questions(q: 'Do you have computer', a: true),
  ];

  String getQuestion() {
    return _questionBank[_questionNumber].title;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  int getTotalQuestionsCount() {
    return _questionBank.length;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
}
