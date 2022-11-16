import 'package:flutter/material.dart';
import 'quiz_questions_model.dart';

const backgroundColor = Color.fromRGBO(45, 27, 3, 1);

const foregroundColor = Color.fromRGBO(244, 140, 6, 1);

List<QuizQuestionModel> quizQuestions = [
  QuizQuestionModel(
    questions: "1. Who is the father of Computers?",
    correctAnswer: "Charles Babbage",
    options: [
      "James Gosling",
      "Charles Babbage",
      "Dennis Ritchie",
      "Bjarne Stroustrup",
    ],
  ),
  QuizQuestionModel(
    questions: "2. What is the full form of CPU?",
    correctAnswer: "Central Processing Unit",
    options: [
      "Computer Processing Unit",
      "Computer Principle Unit",
      "Central Processing Unit",
      " Control Processing Unit",
    ],
  ),
  QuizQuestionModel(
    questions: "3. Which of the following can access the server?",
    correctAnswer: "Web Client",
    options: [
      "Web Client",
      "User",
      "Web Browser",
      " Web Server",
    ],
  ),
  QuizQuestionModel(
    questions:
        "4. Which of the following is not a type of computer on the basis of operation?",
    correctAnswer: "hybrid",
    options: [
      "Analog",
      "digital",
      "hybrid",
      "remote",
    ],
  ),
  QuizQuestionModel(
    questions:
        "5. Which of the following is the first neural network computer?",
    correctAnswer: "SNARC",
    options: [
      "AN",
      "AM",
      "RFD",
      "SNARC"
    ],
  ),
];
