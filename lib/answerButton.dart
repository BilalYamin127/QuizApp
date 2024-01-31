import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.tappedButton});

  final void Function() tappedButton;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        onPressed: tappedButton,
        style: ElevatedButton.styleFrom(
          padding: const  EdgeInsets.symmetric(
            horizontal:50 ,
            vertical: 10,
          ),
          // backgroundColor: Colors.blueAccent.shade700,
          backgroundColor: const  Color(0xFF1E0356),
          shape:const  RoundedRectangleBorder(

            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(20.0)),
          ),
            shadowColor: const Color(0xff39d015),
        ),
        child:
        SizedBox(
          width: 250,
          child: Center(
            child: Text(answerText,
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoMono(
                  fontSize: 19,
                  color: Colors.white,

                ),

            ) ,
          ),
        ),
      ),
    );
  }
}
