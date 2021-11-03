import 'question.dart';

class QuizBrain {
  List<Question> _questionBank = [
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

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  bool getQuestionAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }
}
