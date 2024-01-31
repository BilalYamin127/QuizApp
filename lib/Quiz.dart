import 'package:quizapp/questionScreen.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/startscreen.dart';
import 'package:quizapp/data/question.dart';
import 'package:quizapp/resultScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
//   Widget? activeScreen;
// @override
//   void initState() {
//   activeScreen = StartScreen(screenShift);
//     super.initState();
//   }
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void screenShift() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();

      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);


    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers.clear();
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(screenShift);
    if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(chooseAnswer);
    } else if (activeScreen == "result-screen") {
      screenWidget = ResultScreen(selectedAnswers, restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('quiz App '),
        ),
        body: screenWidget,
      ),
    );
  }
}
