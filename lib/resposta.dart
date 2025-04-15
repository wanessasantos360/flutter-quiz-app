import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  const Resposta (this.texto , {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        // backgroundColor: WidgetStateProperty.all<Color>(
        //   const Color(0xFF4d6bfe),
        // ),
      ),
      child: Text(texto),
      onPressed: () {},
    );
  }
}
