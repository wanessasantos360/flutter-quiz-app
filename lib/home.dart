import 'package:flutter/material.dart';
import 'package:teste_app/pergunta_app.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/stress_quiz_removebg.png',
            width: 100,
            height: 100,
          ),
          Text(
            "Tire alguns minutos para se conectar consigo mesmo e entender melhor como anda o seu nível de estresse.",
          ),

          Text(
            "Responder com sinceridade pode te ajudar a encontrar equilíbrio e bem-estar no seu dia a dia.",
          ),

          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PerguntaApp(); // Substitua por sua tela inicial
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              "Ir para o quiz",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Sans-serif',
                color: Color(0xFF5454bb),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
