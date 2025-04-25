import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Parabéns!! \n Você respondeu todas as \n perguntas do nosso \n questionário",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          color: const Color(0xFF5454BB),
          fontFamily: 'Sans-serif',
        ),
      ),
    );
  }
}
