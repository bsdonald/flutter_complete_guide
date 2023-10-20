import 'package:flutter/material.dart';

class Prompt extends StatelessWidget {
  final String promptText;
  const Prompt(this.promptText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        promptText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
