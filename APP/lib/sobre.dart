import 'package:app_ingles/main.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sobre"),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),

              // TÍTULO
              const Center(
                child: Text(
                  "English Academy",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Center(
                child: Text(
                  "Disciplina: língua inglesa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.darkGray,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // CARD INFO
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.veryLight,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Objetivo do aplicativo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Este aplicativo foi desenvolvido para auxiliar estudantes no aprendizado do tempo verbal Past Perfect, de forma simples, interativa e prática.",
                      style: TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Integrantes do grupo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Livia\nVinicius\nJúlia\nRubens",
                      style: TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Turma: 3A\nProfessor: Gabriel Evaristo",
                      style: TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Tecnologias:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("• Flutter"),
                    Text("• Dart"),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // FRASE FINAL
              const Center(
                child: Text(
                  "Aprender inglês abre portas para o mundo 🌍",
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
    );
  }
}