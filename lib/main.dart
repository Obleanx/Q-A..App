// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/quizBrain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 192, 241),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state, library_private_types_in_public_api
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeper = [];

//  List<String> question = [
  //   'you can lead a cow downstairs but not upstairs.',
  //  'Approximately one quater of human bones are in the feet.',
  //  'A slug\'s blood is green.'
  // ];
  // List<bool> answers = [
  //   false,
  //   true,
  //  true,
  // ];

  void checkAnswer(bool userPickedAnswer) {
    // ignore: prefer_typing_uninitialized_variables
    bool correctAnswer = quizBrain.getCorrectAnswer(questionNumber);
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        scoreKeper.add(Icon(
          Icons.check,
          color: Colors.red,
        ));
      } else {
        scoreKeper.add(Icon(
          Icons.close,
          color: Color.fromARGB(255, 238, 240, 105),
        ));
      }

      quizBrain.nextQuestion();
    });
  }

  int questionNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Expanded(
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(
                    child: Text(
                  quizBrain.getQuestionText(questionNumber),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                )))),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: Colors.amber,
                  backgroundColor: Colors.amberAccent,
                  side: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
                'T r u e ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: Colors.blueAccent,
                  backgroundColor: Colors.blueAccent,
                  side: BorderSide(
                    color: Colors.white,
                  )),
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
                'F a l s e',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: scoreKeper,
        )
      ],
    );
  }
}

// question 1; 'you can lead a cow downstairs but not upstairs.' (False)
// question 2; 'Approximately one quater of human bones are in the feet.' (True)
// question 3; 'A slug\'s blood is green.' (True)
