import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;  // Function to start the quiz indirectly by calling switchScreen

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Text('Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24)),
        SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.quiz, color: Colors.white),
            label: Text('Start Quiz'))
      ],
    ));
  }
}
