
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});
 final  void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
       width: double.infinity,

       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Colors.blueAccent,
             Colors.lightBlue,
           ],

         ),
       ),
       child: SingleChildScrollView(
         child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
           mainAxisSize: MainAxisSize.min,
           children: [
             Image.asset("assets/images/quiz-logo.png",
               color:const Color.fromARGB(150, 124, 217, 8),
               width: double.infinity,

             ),
             const SizedBox(height: 40),
              Text(
               'Flutter quiz !!',
               style: GoogleFonts.poppins(
                 color: Colors.white,
                 fontSize: 24.9,

               ),
             ),
             const SizedBox(height: 40),
             OutlinedButton.icon(
               style: OutlinedButton.styleFrom(
                 backgroundColor: Colors.blue,
               ),
               onPressed: startQuiz,
               icon: const Icon(Icons.arrow_circle_right_outlined,color: Colors.red,opticalSize: 12.3,),

               label:const Text('start Quiz',style: TextStyle(
                   color: Colors.white
               ),
               ) ,

             ),


           ],
         ),
       ),
     ),
   );
  }
}