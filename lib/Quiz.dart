import 'package:flutter/material.dart';

import './buttons.dart';

class Quiz extends StatelessWidget {
  int _index;
  List _questions;
  Function _repondre;

  Quiz(this._index, this._questions, this._repondre);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(15),
          child: Text(
            _questions[_index]["question"],
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        ...(_questions[_index]["reponses"] as List<Map<String, Object>>)
            .map((reponse) {
          return Bouton(() => _repondre(reponse['score']), reponse['text']);
        })
      ],
    );
  }
}
