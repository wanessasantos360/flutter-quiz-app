import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario, {super.key});
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  String get fraseResultado {
    if (pontuacao < 20) {
      return "Você é uma pessoa muito legal!";
    } else if (pontuacao < 30) {
      return "Você é uma pessoa incrível!";
    } else if (pontuacao < 40) {
      return "Você é uma pessoa maravilhosa!";
    } else if (pontuacao < 50) {
      return "Você é uma pessoa fantástica!";
    } else {
      return "Você é uma pessoa sensacional!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Uau!!\n Você respondeu todas as perguntas do nosso questionário.\n \n Sua pontuação foi: $pontuacao\n\n $fraseResultado",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              color: const Color(0xFF5454BB),
              fontFamily: 'Sans-serif',
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF5454BB),
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: Text(
            "Voltar para o início",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sans-serif',
              color: Colors.white,
            ),
            
          ),
        ),
      ],
    );
  }
}
