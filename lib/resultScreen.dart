import 'package:flutter/material.dart';
import 'package:quizapp/data/question.dart';
import 'package:quizapp/Question_summary/Qesution-Summery.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen( this.chosenAnswers,this.onRestart,{super.key});
final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryOfQuiz(){
    final  List<Map<String,Object>> summary=[];

    for(int i=0; i< chosenAnswers.length;i++){
      summary.add(
        {
          'question-index': i,
          'questions': questions[i].text ,
          'correct-answer': questions[i].answers[0],
          'user-answer': chosenAnswers[i],
        });
    }
return summary;
   }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryOfQuiz();
    final numOFCorrectQuestion = summaryData.where((data){
      return data['user-answer']== data['correct-answer'] ;
    }).length;
    final numOfTottalQuestion= questions.length;



    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Colors.green,
            // Color(0x0BEC0FFF),
            Color(0x7C1111FF),
            Colors.red,
          ],
        ),
      ),

      // margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text('you answer $numOFCorrectQuestion Correctly  out of $numOfTottalQuestion Question'),
          const SizedBox(
            height: 30,
          ),
         QuestionSummary(summaryData),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: onRestart,
            child: const Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}
