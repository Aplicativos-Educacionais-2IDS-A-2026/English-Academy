import 'package:app_ingles/main.dart';
import 'package:flutter/material.dart';
class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Conteúdos")),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          contentCard(context, "O que é Past Perfect?", "Estrutura do tempo verbal"),
          contentCard(context, "Quando usar", "Situações de uso"),
          contentCard(context, "Exemplos", "Frases práticas"),
        ],
      ),
    );
  }

  Widget contentCard(BuildContext context, String title, String subtitle) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: const Icon(Icons.school, color: AppColors.primary),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailPage(title: title),
            ),
          );
        },
      ),
    );
  }
}

// ================= DETALHE =================

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    String explanation = "";

    if (title == "O que é Past Perfect?") {
      explanation =
          "- Afirmativa: Sujeito + had + Particípio (ex: She had left).\n\n-Negativa: Sujeito + had not (hadn't) + Particípio (ex: She hadn't left)\n\n-Interrogativa: Had + Sujeito + Particípio? (ex: Had she left?)\n\nO Past Perfect (ou Past Perfect Simple) é o tempo verbal em inglês usado para descrever uma ação que aconteceu antes de outra ação também ocorrida no passado.\n\n É considerado o 'passado do passado', equivalente ao pretérito mais-que-perfeito em português (tinha/havia feito).";
    } else if (title == "Quando usar") {
      explanation =
          "Situações de uso: \n\n-Ação anterior a outro passado: 'The movie had already started when we arrived' (O filme já tinha começado quando chegamos).\n\n-Ações concluídas antes de um tempo específico: 'I had never seen that movie before' (Eu nunca tinha visto aquele filme antes).\n\n-Relatos de ações passadas: 'She admitted that she had stolen the watch' (Ela admitiu que tinha roubado o relógio)";
    } else {
      explanation =
          "-No trabalho:'I realized I had forgotten my laptop at home when I got to the office.'(Percebi que tinha esquecido meu laptop em casa quando cheguei ao escritório.)\n\n-Em um encontro/festa:'By the time Sarah arrived at the party, most guests had left.'(No momento em que a Sarah chegou à festa, a maioria dos convidados tinha ido embora.)\n\n-Sobre estudos:'He failed the test because he hadn't studied enough.'(Ele reprovou no teste porque não tinha estudado o suficiente.)";
    }

    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Text(
              explanation,
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            const Icon(Icons.language, size: 100, color: AppColors.medium),

            const Spacer(),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Voltar"),
            )
          ],
        ),
      ),
    );
  }
}