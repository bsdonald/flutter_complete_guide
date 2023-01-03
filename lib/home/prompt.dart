import 'package:flutter/material.dart';

class Prompt extends StatelessWidget {
  final String promptText;
  const Prompt(this.promptText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(promptText);
  }
}
