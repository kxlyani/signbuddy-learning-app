import 'package:flutter/material.dart';

import 'package:signbuddy/quiz/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<Object, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(
                data: data,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
