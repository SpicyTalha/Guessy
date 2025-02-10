import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'package:guessy/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  /* I can't use the following code because the function switchScreen may not be defined yet during compilation
  So we use the initState method to set the initial value of activeScreen
  Widget activeScreen = StartScreen(switchScreen);  // Passing the function switchScreen to StartScreen
  */

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(
        switchScreen); // Passing the function switchScreen to StartScreen
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    /* Another alternative to the above code
      Widget screenWidget = StartScreen(switchScreen);
      if (activeScreen == 'questions-screen') {
        screenWidget = QuestionScreen();
      }
    */
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.green])),
          child: activeScreen,
          /*
          child: activeScreen == null ? StartScreen(switchScreen) : activeScreen, This is the same as the code above
          */
        ),
      ),
    );
  }
}
