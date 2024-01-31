import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Question_summary/summary-question-Index.dart';

class ResultSummaryOfQuizItems extends StatelessWidget {
  const ResultSummaryOfQuizItems({super.key, required this.resultSummaryItems});

  final Map<String, Object> resultSummaryItems;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = resultSummaryItems['user-answer' ] ==
        resultSummaryItems['correct-answer'];
    return Row(
      children: [
        SummaryQuestionIndex(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: resultSummaryItems['question-index'] as int,

        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                resultSummaryItems['questions'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                resultSummaryItems['user-answer'] as String,
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 12,

                ),

              ),

              Text(
                resultSummaryItems['correct-answer'] as String,
                style: const TextStyle(
                  color: Color(0x340808FF),

                ),

              )
            ],
          ),
        )
      ],
    );
  }
}