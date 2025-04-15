import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  
  void _responder(){

    setState(() {
    if (_perguntaSelecionada < 6) {
      _perguntaSelecionada++;
    } else {
      _perguntaSelecionada = 0;
      }
    });


  }

  @override
  Widget build(BuildContext context) {

    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas' : ['Preto', 'Azul', 'Cinza' , 'Rosa'],
      },

      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas' : ['Cachorro', 'Gato', 'Calopsita' , 'Galinha'],
      }, 
      {
        'texto': 'Qual é o seu esporte favorito?',
        'respostas' : ['Futebol', 'Vôlei', 'Basquete' , 'Natação'],
      }, 
      {
        'texto': 'Qual é o seu filme favorito?',
        'respostas' : ['Interstelar', 'Marley e eu', 'Ainda estou aqui' , 'Impossível'],
      }, 
      {
        'texto': 'Qual é a sua comida favorita?',
        'respostas' : ['Estrogonofe', 'Pão de queijo','Beirute' , 'Pizza'],
      }, 
      {
        'texto': 'Qual é o seu livro favorito?',
        'respostas' : ['Um café com Sêneca', 'O despertar da senhorita Prim', 'Feliz ano velho' , 'Mochileiro das Galáxias'],
      }
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
          backgroundColor: const Color(0xFF5454BB),
          centerTitle: true,
          
        ),
        body: Column(
          children: <Widget>[ 
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          
            Resposta("Resposta 1", _responder),
            Resposta("Resposta 2", _responder),
            Resposta("Resposta 3", _responder),
        
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
