import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:quiz_2/data/questions.dart';
import 'package:signbuddy/quiz/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(context) {
    final bool isCorrectAnswer = data['user_answer'] == data['correct_answer'];
    final questionIndex = (data['question_index'] as int);
    return Container(
      padding: const EdgeInsets.all(7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              isCorrectAnswer: isCorrectAnswer, questionIndex: questionIndex),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    data['user_answer'] as String,
                    style: GoogleFonts.lancelot(
                        color: const Color.fromARGB(255, 7, 44, 76)),
                  ),
                  Text(
                    data['correct_answer'] as String,
                    style: GoogleFonts.lancelot(color: Colors.greenAccent),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
