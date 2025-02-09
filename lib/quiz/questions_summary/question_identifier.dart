import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? Colors.green[200] : Colors.red[100],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        (questionIndex + 1).toString(),
        style: const TextStyle(
          color: Color.fromARGB(255, 7, 44, 76),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
