import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/results_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  List<String> selectedAnswers = [];
  var activeScreen = 'start_screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen'; //we can place anything
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      //quiz is done
      setState(() {
        // selectedAnswers.clear();
        activeScreen = 'results_screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: Container(
                height: 70,
                color: Colors.deepPurple,
                alignment: Alignment.center,
                child: const Text(
                  "Welcome to Flutter",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 78, 13, 151),
                      Color.fromARGB(255, 107, 15, 168),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: activeScreen == 'start_screen'
                    ? StartScreen(switchScreen)
                    : activeScreen == 'results_screen'
                    ? ResultsScreen(
                        chosenAnswers: selectedAnswers,
                        onRestart: restartQuiz,
                      )
                    : QuestionsScreen(onSelectAnswer: chooseAnswer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
