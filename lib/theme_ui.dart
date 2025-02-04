import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThemeUI extends StatelessWidget{
  ThemeUI(this.material, {super.key});

  var material;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.deepPurpleAccent
                ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: material,
        ),
      ),
    );
  }
}