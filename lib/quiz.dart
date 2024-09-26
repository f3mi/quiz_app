import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  List<String> selectedAnswer = [];

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = "question-screen";
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chosenAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetScreen = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      widgetScreen = QuestionScreen(
        onSelectedAnswer: chosenAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      widgetScreen = ResultScreen(
        onRestart: restartQuiz,
        chosenAnswers: selectedAnswer,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: widgetScreen,
        ),
      ),
    );
  }
}
