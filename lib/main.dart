import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;

  final _perguntas = const[
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
  
  void _responder(){
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPerguntaSelecionada 
    ? _perguntas[_perguntaSelecionada].cast()['respostas']
    : [];
    
    
    List<Widget> widgetsResposta = respostas
    .map((t) => Resposta(t, _responder))
    .toList();


    // for (String textoResp in respostas) {
    //   widgetsResposta.add(Resposta(textoResp, _responder));
    // }
           

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
        body: temPerguntaSelecionada ? Column(
          children: <Widget>[ 
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
          
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
        
        ]) : null,
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
