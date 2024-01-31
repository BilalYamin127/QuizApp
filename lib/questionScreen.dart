import 'package:flutter/material.dart';
import 'package:quizapp/answerButton.dart';
import 'package:quizapp/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.whenSelectAnswer,{super.key});
final void Function (String answer) whenSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void questionShowedOnScreen(String selectedAnswer) {
    widget.whenSelectAnswer(selectedAnswer);
    setState(() {

      currentQuestionIndex = currentQuestionIndex + 1;


    });
  }

  @override
  Widget build(BuildContext context) {
    // int count = questions.length;
    final onScreenQuestion = questions[currentQuestionIndex];

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Color(0x8B5672EC),
            // Color(0x5672EC8B),
            Colors.blue,
            Colors.blueAccent,
          ],
        ),
      ),
      child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              onScreenQuestion.text,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ) ,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),

            ...onScreenQuestion.getShuffledList().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  tappedButton: (){
                    questionShowedOnScreen(answer);
                  }
              );
            }
            ),
          ]
      ),
    );
  }
}
