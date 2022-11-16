import 'package:flutter/material.dart';
import 'package:quizee_app/const.dart';
import 'package:quizee_app/play_quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  int correctAnswers, wrongAnswers;

  ResultScreen({
    super.key,
    required this.correctAnswers,
    required this.wrongAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: foregroundColor,
        title: const Text(
          'Result',
          style: TextStyle(
            color: backgroundColor,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab('Correct Answers', correctAnswers),
                answerTab('Wrong Answers', wrongAnswers),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: foregroundColor,
                elevation: 20,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const PlayQuiz()),
                    (route) => false);
              },
              child: const Text(
                'Restart',
                style: TextStyle(
                  color: backgroundColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '$value',
          style: const TextStyle(
            color: foregroundColor,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
