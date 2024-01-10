import 'package:flutter/material.dart';

import 'package:quizits/screens/questions.dart';

class HomeScreen extends StatelessWidget {
  final void Function(Widget widget) switchScreen;

  const HomeScreen(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png", width: 300),
        const SizedBox(height: 20),
        const Text("Learn Flutter the fun way!", style: TextStyle(color: Colors.white, fontSize: 20)),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            switchScreen(const QuestionsScreen());
          },
          icon: const Icon(Icons.play_arrow),
          label: const Text("Start the quiz"),
        ),
      ],
    ));
  }
}
