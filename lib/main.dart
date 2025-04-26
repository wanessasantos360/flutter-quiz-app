import 'package:flutter/material.dart';
import 'package:teste_app/questionario.dart';
import 'package:teste_app/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 9},
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Cinza', 'pontuacao': 8},
        {'texto': 'Rosa', 'pontuacao': 7},
        {'texto': 'Verde', 'pontuacao': 6},
        {'texto': 'Amarelo', 'pontuacao': 5},
      ],
    },

    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 9},
        {'texto': 'Gato', 'pontuacao': 8},
        {'texto': 'Calopsita', 'pontuacao': 10},
        {'texto': 'Peixe', 'pontuacao': 7},
        {'texto': 'Galinha', 'pontuacao': 6},
        {'texto': 'Cavalo', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual é o seu esporte favorito?',
      'respostas': [
        {'texto': 'Futebol', 'pontuacao': 6},
        {'texto': 'Vôlei', 'pontuacao': 10},
        {'texto': 'Basquete', 'pontuacao': 7},
        {'texto': 'Natação', 'pontuacao': 9},
        {'texto': 'Ciclismo', 'pontuacao': 8},
        {'texto': 'Corrida', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual é o seu filme favorito?',
      'respostas': [
        {'texto': 'Interstelar', 'pontuacao': 10},
        {'texto': 'Marley e eu', 'pontuacao': 7},
        {'texto': 'Ainda estou aqui', 'pontuacao': 8},
        {'texto': 'Impossível', 'pontuacao': 9},
        {'texto': 'A vida é bela', 'pontuacao': 6},
        {'texto': 'O Rei Leão', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual é a sua comida favorita?',
      'respostas': [
        {'texto': 'Estrogonofe', 'pontuacao': 8},
        {'texto': 'Pão de queijo', 'pontuacao': 7},
        {'texto': 'Beirute', 'pontuacao': 5},
        {'texto': 'Pizza', 'pontuacao': 9},
        {'texto': 'Sushi', 'pontuacao': 6},
        {'texto': 'Hambúrguer', 'pontuacao': 10},
      ],
    },
    {
      'texto': 'Qual é o seu livro favorito?',
      'respostas': [
        {'texto': 'Um café com Sêneca', 'pontuacao': 10},
        {'texto': 'O despertar da senhorita Prim', 'pontuacao': 5},
        {'texto': 'A arte da guerra', 'pontuacao': 7},
        {'texto': 'O homem mais rico da Babilônia', 'pontuacao': 6},
        {'texto': 'Feliz ano velho', 'pontuacao': 9},
        {'texto': 'Mochileiro das Galáxias', 'pontuacao': 8},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Perguntas",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sans-serif',
            ),
          ),
          backgroundColor: const Color(0xFF5454BB),
          centerTitle: true,
        ),
        body:
            temPerguntaSelecionada
                ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder,
                )
                : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
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
