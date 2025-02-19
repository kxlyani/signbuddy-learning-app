import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:signbuddy/quiz/data/questions.dart';
import 'package:signbuddy/quiz/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<Image> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<Object, Object>> get summaryData {
    final List<Map<Object, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    // final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //score
            Text(
              'Score: You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //summary
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),

            //restart button
            TextButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(Icons.refresh),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 29, 82, 122),
                foregroundColor: const Color.fromARGB(255, 219, 239, 255),
              ),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
