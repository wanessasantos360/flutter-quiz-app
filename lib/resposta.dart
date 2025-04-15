import 'package:flutter/material.dart';
import 'package:teste_app/questao.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado; 



  const Resposta (this.texto , this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
