import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  
  void responder(){

    setState(() {
    if (_perguntaSelecionada < 6) {
      _perguntaSelecionada++;
      //print("Pergunta: $perguntaSelecionada");
    } else {
      //print("Fim das perguntas!");
      _perguntaSelecionada = 0;
      }
    });


  }

  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?",
      "Qual é o seu esporte favorito?",
      "Qual é o seu filme favorito?",
      "Qual é a sua comida favorita?",
      "Qual é o seu livro favorito?",
      "Qual é a sua música favorita?",
    ];
           

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas", style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sans-serif'
            )
          ),
          backgroundColor: const Color.fromARGB(255, 84, 84, 187),
          centerTitle: true,
          
        ),
        body: Column(
          children: [ 
            Questao(perguntas[_perguntaSelecionada]),
          
            Resposta("Resposta 1"),
            Resposta("Resposta 2"),
            Resposta("Resposta 3"),
        
        ]),
      )
    );
  }
}


class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
