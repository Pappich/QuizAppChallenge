import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/widgets/questions_summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chooseAnswers,
    required this.onRestart,
  });

  final List<String> chooseAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      final question = questions[i];
      final correctAnswer = question.answers[question.correctAnswerIndex];
      final userAnswer = chooseAnswers[i];

      summary.add({
        'question_index': i,
        'question': question.text,
        'correct_answer': correctAnswer,
        'user_answer': userAnswer,
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQustions = questions.length;
    final numCorrectQuestion = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result',
            style: TextStyle(fontFamily: 'MN NaemNueang', fontSize: 20)),
        backgroundColor: Color.fromARGB(255, 49, 156, 161),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white, // Set the background color to white
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'คุณตอบถูกทั้งหมด $numCorrectQuestion ข้อ จาก $numTotalQustions ข้อ',
              style: const TextStyle(
                fontFamily: 'MN NaemNueang',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 600,
              //frame Total QA
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: QuestionSummary(summaryData),
            ),
            const SizedBox(
              height: 25,
            ),
            OutlinedButton.icon(
              onPressed: onRestart,
              icon: const Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 49, 156, 161),
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  fontFamily: 'MN NaemNueang',
                  fontSize: 20,
                  color: Color.fromARGB(255, 49, 156, 161),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
