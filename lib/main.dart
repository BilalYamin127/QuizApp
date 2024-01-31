import 'package:flutter/material.dart';
import 'package:quizapp/Quiz.dart';
void main() {
  runApp(const LogoApp());
}

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Quiz();
  }
}
