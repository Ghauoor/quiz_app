class  QuizQuestionModel{
  final String questions;
  final String correctAnswer;
  final List<String> options;

  QuizQuestionModel(
      {required this.questions,
      required this.correctAnswer,
      required this.options});
}
