import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'start_screen.dart';
import 'theme_ui.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget? currentScreen;

  @override
  void initState() {
    currentScreen = StartScreen(nextScreen);
    super.initState();
  }
  
  void nextScreen() {
    setState(() {
      currentScreen = QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeUI(currentScreen);
  }
}