import 'package:app_ingles/inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EnglishApp());
}

// ================= CORES =================

class AppColors {
  static const primary = Color(0xFF1E3A8A);
  static const medium = Color(0xFF2563EB);
  static const light = Color(0xFF60A5FA);
  static const veryLight = Color(0xFFDBEAFE);

  static const darkGray = Color(0xFF1F2937);
  static const lightGray = Color(0xFFE5E7EB);
  static const white = Color(0xFFFFFFFF);
}

// ================= APP =================

class EnglishApp extends StatelessWidget {
  const EnglishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'English Academy',

      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: AppColors.veryLight,

        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.medium,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),

      cardTheme: CardThemeData(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
),
      ),

      home: const HomePage(),
    );
  }
}









