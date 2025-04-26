import 'package:flutter/material.dart';
//import 'package:teste_app/questao.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado; 



  const Resposta (this.texto , this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      
        onPressed: quandoSelecionado,
        child: Text(texto,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Sans-serif',
          ),
        ),
      ),
    );
  }
}
