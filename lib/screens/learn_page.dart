import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Sign Language'),
        ),
        backgroundColor: const Color.fromARGB(255, 112, 168, 232),
        body: Column(
          children: [
            SizedBox(
              child: Image.asset('assets/images/learnpage1.png'),
            ),
            const SizedBox(
              child: Center(
                child: Text(
                  'Chapters',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ));
  }
}
