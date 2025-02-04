import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.nextScreen, {super.key});

  final void Function() nextScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(199, 255, 255, 255),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white, // Text color
              backgroundColor: Colors.deepPurple, // Button background color
              side: BorderSide(color: Colors.white), // Border color
            ),
            icon: Icon(
              Icons.arrow_circle_right_sharp,
              color: Colors.white,
            ),
            onPressed: nextScreen,
            label: Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
