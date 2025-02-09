import 'package:flutter/material.dart';
import 'package:signbuddy/quiz/widgets/answer_button.dart';
import 'package:signbuddy/quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(Image answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(Image selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //question
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 20),

            //answer buttons
            //spreading - stores elements of list as csv values
            ...currentQuestion.shuffledAnswers.map((answer) {
              return Column(
                children: [
                  AnswerButton(
                    answerText: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                  ),
                  const SizedBox(height: 15), // Add spacing here
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
