import 'package:flutter/material.dart';
import 'package:quizee_app/const.dart';
import 'package:quizee_app/play_quiz_screen.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Quiz App',
          style: TextStyle(
            color: backgroundColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: foregroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Quiz App',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w400,
                color: foregroundColor,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: foregroundColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayQuiz(),
                  ),
                );
              },
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
