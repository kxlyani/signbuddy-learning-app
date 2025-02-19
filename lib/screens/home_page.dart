import 'package:flutter/material.dart';
import 'package:signbuddy/screens/learn_page.dart';
import 'package:signbuddy/quiz/quiz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('sampel title'),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 112, 168, 232),
              Color.fromARGB(255, 33, 117, 143)
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 250,
              height: 100,
              child: Image.asset('assets/images/signbuddylogo.png'),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/learn.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const LearnPage(),
                        ),
                      );
                    },
                    child: const Text('Learn'),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/games.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Games'),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/quiz.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const Quiz(),
                        ),
                      );
                    },
                    child: const Text('Quiz'),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
