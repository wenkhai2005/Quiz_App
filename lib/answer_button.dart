import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerButton extends StatelessWidget {
  AnswerButton(this.answer, this.onTap, {super.key});

  String answer;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
        backgroundColor: Color.fromARGB(255, 52, 16, 124),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(answer),
    );
  }
}
