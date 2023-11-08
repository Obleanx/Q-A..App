// ignore_for_file: file_names, non_constant_identifier_names

import 'package:quizapp/Question.dart';

class QuizBrain {
  final List<Question> _questionBank = [
    Question('you can lead a cow downstairs but not upstairs.', false),
    Question('Approximately one quater of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('some cats are actually allergic to humans.', true),
    Question('Buzz Adrins\'s mother\'s maiden name is moon', true),
    Question('It is Illegal to pee in the Ocean in Portugal', true),
    Question(
        'No piece of square dry Paper can be folded in half for more than seven times',
        false),
    Question(
        'In London , UK, if you happen to die in House of Parliament You are Technically Entiltled to a state funeral, because the building is considered a scared place',
        true),
    Question(
        'The Loudest sound ever produced by an animal is 188 decibels. That animal is the A frican Elephant.',
        false),
    Question(
        'The total surface of a human lung is approximately 70 square metres.',
        true),
    // ignore: unnecessary_string_escapes
    Question('Google was originally called \"Bankrub\".', true),
    Question(
        'Chocolate affects the Hearts and nervous system of a dog, a few ounce is enough to kill a small dog.',
        true),
    Question(
        'The Wright brothers were the first to design a motor bike.', false),
    Question('The Nigerian Education system sucks!.', true),
    Question('School na scam.', false),
    Question(
        'Tinubu won the 2023 presidential election through riggin .', true),
    Question('Dart programming is easy.', false),
  ];

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  bool getCorrectAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }

  void nextQuestion() {}
}
