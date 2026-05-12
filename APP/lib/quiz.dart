import 'package:flutter/material.dart';
import 'package:app_ingles/inicial.dart'; // HomePage
import 'package:app_ingles/main.dart'; // AppColors

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;
  int score = 0;
  String selected = "";

  final List<Map<String, dynamic>> questions = [
    {
      "q": "Qual auxiliar do Past Perfect?",
      "o": ["has", "had", "have", "did"],
      "a": "had"
    },
    {
      "q": "Complete: She ___ finished.",
      "o": ["have", "has", "had", "did"],
      "a": "had"
    },

  
    {
      "q": "O Past Perfect é usado para:",
      "o": [
        "Falar do presente",
        "Falar do futuro",
        "Ação antes de outra no passado",
        "Rotina diária"
      ],
      "a": "Ação antes de outra no passado"
    },
    {
      "q": "Complete: They ___ left before I arrived.",
      "o": ["has", "have", "had", "did"],
      "a": "had"
    },
    {
      "q": "Qual o past participle de 'eat'?",
      "o": ["ate", "eaten", "eat", "eats"],
      "a": "eaten"
    },
  ];

  void next() {
    if (selected == questions[index]["a"]) score++;

    if (index < questions.length - 1) {
      setState(() {
        index++;
        selected = "";
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ResultPage(
            score: score,
            total: questions.length,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var q = questions[index];

    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Pergunta ${index + 1} de ${questions.length}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              q["q"] as String,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ...(q["o"] as List<String>).map((e) => RadioListTile(
              activeColor: AppColors.medium,
              title: Text(e),
              value: e,
              groupValue: selected,
              onChanged: (v) => setState(() => selected = v!),
            )),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: selected.isEmpty ? null : next,
              child: const Text("Confirmar"),
            )
          ],
        ),
      ),
    );
  }
}

// ================= RESULTADO =================

class ResultPage extends StatelessWidget {
  final int score;
  final int total;

  const ResultPage({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    String mensagem;

    if (score == total) {
      mensagem = "Perfeito! 🎯";
    } else if (score >= 3) {
      mensagem = "Muito bom! 👏";
    } else {
      mensagem = "Continue praticando 💪";
    }

    return Scaffold( 
         backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Resultado")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(Icons.emoji_events, size: 80, color: AppColors.medium),

            const SizedBox(height: 20),

            Text(
              "$score / $total",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              mensagem,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const QuizPage()),
                );
              },
              child: const Text("Refazer"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                  (r) => false,
                );
              },
              child: const Text("Início"),
            ),
          ],
        ),
      ),
    );
  }
}