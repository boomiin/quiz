import 'package:flutter/material.dart';
import 'package:flutter_app/Quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MonQuiz());

class MonQuiz extends StatefulWidget {
  @override
  _MonQuizState createState() => _MonQuizState();
}

class _MonQuizState extends State<MonQuiz> {
  final _questions = const [
    {
      'question': "Qui est le premier président de la Côte d'Ivoire ?",
      'reponses': [
        {'text': 'Alassane Ouattara', 'score': 0},
        {'text': 'Konan Bédié', 'score': 0},
        {'text': 'Félix Houphouet Boigny', 'score': 1},
        {'text': 'Laurent Gbabo', 'score': 0}
      ],
    },
    {
      'question': "Quelle est la capitale économique de la Côte d'Ivoire ?",
      'reponses': [
        {'text': "Abidjan", 'score': 1},
        {'text': "Yamoussoukro", 'score': 0},
        {'text': "Bondoukou", 'score': 0},
        {'text': "San Pédro", 'score': 0}
      ],
    },
    {
      'question': "Sur quel continent se trouve la Côte d'Ivoire ?",
      'reponses': [
        {'text': "Afrique", 'score': 1},
        {'text': "Europe", 'score': 0},
        {'text': "Asie", 'score': 0},
        {'text': "Amérique", 'score': 0}
      ],
    }
  ];

  int _index = 0;
  int _totalScore = 0;
  _repondre(int score) {
    _totalScore += score;
    setState(() {
      _index = _index + 1;
    });
  }

  _reset() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Mon Quiz",
              style: TextStyle(color: Colors.blueAccent),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          body: _index < _questions.length
              ? Quiz(_index, _questions, _repondre)
              : Result(_totalScore, _reset)),
    );
  }
}
