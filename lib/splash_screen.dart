import 'package:flutter/material.dart';
import 'package:teste_app/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/stress_quiz_removebg.png',
            width: 250,
            height: 250,
          ),

          const SizedBox(width: 20),

          const Text(
            'Bem-vindo ao \nnosso questionário \nde estresse!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color:  Color(0xFF5454bb),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Home(); // Substitua por sua tela inicial
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF5454bb),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              "Vamos lá!",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Sans-serif',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
