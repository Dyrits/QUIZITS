import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Navigator.pushNamed(context, "/start");
          },
          icon: const Icon(Icons.play_arrow),
          label: const Text("Start the quiz"),
        ),
      ],
    ));
  }
}
