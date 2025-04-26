import 'package:flutter/material.dart';
import 'package:teste_app/questao.dart';
import 'package:teste_app/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada
            ? perguntas[perguntaSelecionada].cast()['respostas']
            : []; // Quando chega no final do dicionário a tela fica branca porque não tem pergunta

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'].toString(), 
            () => quandoResponder(int.parse(resp['pontuacao'].toString())),
          );
        }), //.toList(),
      ],
    );
  }
}
