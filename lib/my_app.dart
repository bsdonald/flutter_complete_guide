import 'package:flutter/material.dart';
import 'package:shop_app/home/home_screen.dart';
import 'package:shop_app/quiz/quiz_home_screen.dart';
import 'package:shop_app/roll_dice/roll_dice_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/quiz': (context) => const QuizHomeScreen(),
        '/dice': (context) => const RollDiceHomeScreen(),
      },
    );
  }
}
