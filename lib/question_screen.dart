import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(currentQuestion.answer[0], () {}),
          SizedBox(
            height: 3,
          ),
          AnswerButton(currentQuestion.answer[1], () {}),
          SizedBox(
            height: 3,
          ),
          AnswerButton(currentQuestion.answer[2], () {}),
          SizedBox(
            height: 3,
          ),
          AnswerButton(currentQuestion.answer[3], () {}),
        ],
      ),
    );
  }
}
