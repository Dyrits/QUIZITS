import 'package:flutter/material.dart';

import 'package:quizits/screens/home.dart';
import 'package:quizits/containers/gradient.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget screen;

  void switchScreen(Widget widget) {
    setState(() {
      screen = widget;
    });
  }

  @override
  void initState() {
    super.initState();
    screen = HomeScreen(switchScreen);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Quizits",
        home: Scaffold(
            body: GradientContainer(
                colors: const [Colors.deepPurple, Colors.deepPurpleAccent],
                alignments: const {"begin": Alignment.topLeft, "end": Alignment.bottomRight},
                child: screen)));
  }
}
