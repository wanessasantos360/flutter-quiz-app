import 'package:flutter/material.dart';
import 'package:teste_app/questionario.dart';
import 'package:teste_app/resultado.dart';

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      "texto": "Com que frequência você sente que está sobrecarregado?",
      "respostas": [
        {"texto": "Quase nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Como você reage diante de prazos apertados?",
      "respostas": [
        {"texto": "Mantenho a calma", "pontuacao": 5},
        {"texto": "Fico um pouco nervoso", "pontuacao": 6},
        {"texto": "Me preocupo bastante", "pontuacao": 7},
        {"texto": "Entro em pânico", "pontuacao": 8},
        {"texto": "Perco o foco", "pontuacao": 9},
        {"texto": "Desisto", "pontuacao": 10},
      ],
    },
    {
      "texto": "Com que frequência você sente dores de cabeça?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "De vez em quando", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Diariamente", "pontuacao": 10},
      ],
    },
    {
      "texto": "Como anda a qualidade do seu sono?",
      "respostas": [
        {"texto": "Durmo bem todas as noites", "pontuacao": 5},
        {"texto": "Durmo bem na maioria das noites", "pontuacao": 6},
        {"texto": "Às vezes tenho insônia", "pontuacao": 7},
        {"texto": "Frequentemente acordo cansado", "pontuacao": 8},
        {"texto": "Tenho dificuldade para dormir", "pontuacao": 9},
        {"texto": "Quase não durmo", "pontuacao": 10},
      ],
    },
    {
      "texto": "Como você lida com críticas?",
      "respostas": [
        {"texto": "Aceito numa boa", "pontuacao": 5},
        {"texto": "Refletir e melhoro", "pontuacao": 6},
        {"texto": "Me incomoda um pouco", "pontuacao": 7},
        {"texto": "Fico irritado", "pontuacao": 8},
        {"texto": "Fico muito chateado", "pontuacao": 9},
        {"texto": "Levo para o lado pessoal", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você sente falta de energia durante o dia?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Como você se sente ao acordar?",
      "respostas": [
        {"texto": "Renovado", "pontuacao": 5},
        {"texto": "Bem disposto", "pontuacao": 6},
        {"texto": "Normal", "pontuacao": 7},
        {"texto": "Cansado", "pontuacao": 8},
        {"texto": "Exausto", "pontuacao": 9},
        {"texto": "Sem vontade de sair da cama", "pontuacao": 10},
      ],
    },
    {
      "texto": "Com que frequência você sente irritação sem motivo aparente?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você sente que consegue controlar seu tempo no dia a dia?",
      "respostas": [
        {"texto": "Totalmente", "pontuacao": 5},
        {"texto": "Quase sempre", "pontuacao": 6},
        {"texto": "Na maioria das vezes", "pontuacao": 7},
        {"texto": "Às vezes", "pontuacao": 8},
        {"texto": "Raramente", "pontuacao": 9},
        {"texto": "Nunca", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você sente dores no corpo sem explicação médica?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Muito raramente", "pontuacao": 6},
        {"texto": "De vez em quando", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Qual a sua principal reação diante de conflitos?",
      "respostas": [
        {"texto": "Busco resolver com calma", "pontuacao": 5},
        {"texto": "Procuro entender o outro lado", "pontuacao": 6},
        {"texto": "Evito o conflito", "pontuacao": 7},
        {"texto": "Fico irritado", "pontuacao": 8},
        {"texto": "Perco a paciência", "pontuacao": 9},
        {"texto": "Explodo facilmente", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você sente vontade de se isolar socialmente?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você sente seu coração acelerar em situações comuns?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você procrastina tarefas importantes por ansiedade?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você sente dificuldades de concentração?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Com que frequência você se sente ansioso sem razão aparente?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você já sentiu que seu desempenho caiu por causa do estresse?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Poucas vezes", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Muitas vezes", "pontuacao": 9},
        {"texto": "Constantemente", "pontuacao": 10},
      ],
    },
    {
      "texto": "Como está sua alimentação ultimamente?",
      "respostas": [
        {"texto": "Muito equilibrada", "pontuacao": 5},
        {"texto": "Boa", "pontuacao": 6},
        {"texto": "Aceitável", "pontuacao": 7},
        {"texto": "Desregulada", "pontuacao": 8},
        {"texto": "Muito desregulada", "pontuacao": 9},
        {"texto": "Caótica", "pontuacao": 10},
      ],
    },
    {
      "texto": "Você já se sentiu esgotado física e mentalmente?",
      "respostas": [
        {"texto": "Nunca", "pontuacao": 5},
        {"texto": "Raramente", "pontuacao": 6},
        {"texto": "Às vezes", "pontuacao": 7},
        {"texto": "Frequentemente", "pontuacao": 8},
        {"texto": "Quase sempre", "pontuacao": 9},
        {"texto": "Sempre", "pontuacao": 10},
      ],
    },
    {
      "texto": "Como você descreveria seu humor na maior parte do tempo?",
      "respostas": [
        {"texto": "Muito positivo", "pontuacao": 5},
        {"texto": "Positivo", "pontuacao": 6},
        {"texto": "Neutro", "pontuacao": 7},
        {"texto": "Levemente negativo", "pontuacao": 8},
        {"texto": "Negativo", "pontuacao": 9},
        {"texto": "Muito negativo", "pontuacao": 10},
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
        //appBar: getAppBar(context: context, title: restaurant.name),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
