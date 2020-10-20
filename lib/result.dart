import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function reset;
  Result(this._score, this.reset);

  String get resultPhrase {
    String resultText = "Votre score :";
    if (_score >= 2) {
      resultText = "T'es un champion !";
    } else if (_score < 2) {
      resultText = "Vaurien la!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            '${resultPhrase}',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Text(
            '${_score}/3',
            style: TextStyle(fontSize: 28),
          ),
          FlatButton(
            onPressed: reset,
            child: Text("Reprendre"),
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
