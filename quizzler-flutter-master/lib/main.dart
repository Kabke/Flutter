import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
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
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(q: 'You can  lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'Frodo is more powerful than Gandalf.', a: false),
    Question(q: 'Tyrone Biggums is a pot head.', a: false),
    Question(
        q: 'Terminator 2 is better than the original Terminator.', a: true),
    Question(q: 'Toy Story was directed by George Lucas.', a: false),
    Question(q: 'R2D2 is a turbochad.', a: true),
    Question(q: 'Airfrying is a hoax.', a: false),
    Question(q: 'Piano is just a 72-piece drum set.', a: true)
  ];

  Icon wrongAnswer = Icon(
    Icons.close,
    color: Colors.red,
    semanticLabel: 'Text to announce in accessibility modes',
  );

  Icon rightAnswer = Icon(
    Icons.check,
    color: Colors.green,
    semanticLabel: 'Text to announce in accessibility modes',
  );

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;

                if (true == correctAnswer) {
                  scoreKeeper.add(rightAnswer);
                } else {
                  scoreKeeper.add(wrongAnswer);
                }

                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;

                if (false == correctAnswer) {
                  scoreKeeper.add(rightAnswer);
                } else {
                  scoreKeeper.add(wrongAnswer);
                }
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
