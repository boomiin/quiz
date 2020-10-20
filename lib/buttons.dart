import 'package:flutter/material.dart';

class Bouton extends StatelessWidget {
  final Function _repondre;
  final String _reponse;

  Bouton(this._repondre, this._reponse);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(onPressed: _repondre, child: Text(_reponse)));
  }
}
