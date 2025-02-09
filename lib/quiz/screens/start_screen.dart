import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image
          Image.asset(
            'assets/images/learnpage1.png',
            width: 300,
            // color: const Color.fromARGB(251, 233, 190, 100),
          ),

          //sizedbox
          const SizedBox(height: 80),

          //text
          const Text(
            'Learn Signs the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),

          //sized box
          const SizedBox(height: 30),

          //start button
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                // Custom outline
                color: Color.fromARGB(255, 46, 99, 140), // Outline color
                width: 2, // Outline thickness
              ),
              backgroundColor: const Color.fromARGB(255, 29, 82, 122),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.account_tree_sharp),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
