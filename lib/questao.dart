import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'Sans-serif',
          color: const Color.fromARGB(255, 84, 84, 187),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
