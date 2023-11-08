// ignore_for_file: file_names

class Question {
  late String questionText;

  late bool questionAnswer;

  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}

Question newQuestion = Question('text', true);
