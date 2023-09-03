import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/question_screen.dart';
import 'package:flutter_application_1/screens/result_screen.dart';
import 'package:flutter_application_1/screens/start_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var _activeScreen = 'start-screen';
  List<String> _selectedAnswer = [];

  void _switchScreen() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  void _chooseAnswer(String answer) {
    _selectedAnswer.add(answer);
    print(_selectedAnswer);

    if (_selectedAnswer.length == questions.length) {
      setState(() {
        _activeScreen = 'result-screen';
      });
    }
  }

  void restartQuizz() {
    setState(() {
    _activeScreen = 'questions-screen';      
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(_switchScreen);

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: _chooseAnswer,
      );
    }

    if(_activeScreen == 'result-screen'){
      screenWidget = ResultScreen(
        chooseAnswers : _selectedAnswer,
        onRestart: restartQuizz,
       );
    }

    return MaterialApp(
      home: Scaffold(
        body: screenWidget,
        // body: QuestionScreen(),
      ),
    );
  }
}
