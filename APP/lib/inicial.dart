
import 'package:app_ingles/content.dart';
import 'package:app_ingles/main.dart';
import 'package:app_ingles/quiz.dart';
import 'package:app_ingles/sobre.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("English Academy"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.veryLight, AppColors.medium],
            ),
          ),
        ),
      ),

      drawer: Drawer(
        child: Column(
          children: [

        DrawerHeader(
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [AppColors.veryLight, AppColors.medium],
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 120,
        ),
      ),

      const SizedBox(height: 10),

    ],
  ),
),

            // ===== ITENS =====
            drawerItem(
              icon: Icons.book,
              text: "Conteúdos",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ContentPage()),
                );
              },
            ),

            drawerItem(
              icon: Icons.quiz,
              text: "Quiz",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const QuizPage()),
                );
              },
            ),

            drawerItem(
              icon: Icons.info,
              text: "Sobre",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutPage()),
                );
              },
            ),

            const Spacer(),

            const Divider(),

          ],
        ),
      ),

  body: SingleChildScrollView(
  child: SizedBox(
    height: MediaQuery.of(context).size.height,
    child: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 30),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // TEXTO
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text(
                      "Bem-vindo ao",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.darkGray,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "English Academy",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Seu caminho para dominar o inglês",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.darkGray,
                      ),
                    ),
                  ],
                ),
              ),

              // GLOBO
              Stack(
                alignment: Alignment.topRight,
                children: [

                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.veryLight,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.public,
                      size: 60,
                      color: AppColors.medium,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 40),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.veryLight,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Text(
                  "Por que aprender inglês?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "• O inglês é o idioma mais usado no mundo \n"
                  "• Essencial para viagens \n"
                  "• Abre portas para o mercado de trabalho \n"
                  "• Acesso a conteúdos globais \n"
                  "• Facilita estudos e oportunidades internacionais ",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.darkGray,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.asset(
    'assets/images/capa-ingleswebp.webp',
    height: 200,
    width: double.infinity,
    fit: BoxFit.cover,
  ),
),

const SizedBox(height: 25),

         

          const Center(
            child: Text(
              "Comece hoje e transforme seu futuro!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.medium,
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    ),


  ),
),
   
    );
  }

  // ===== COMPONENTE DE ITEM =====
  Widget drawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }
}