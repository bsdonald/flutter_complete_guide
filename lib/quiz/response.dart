import 'package:flutter/material.dart';
import 'package:shop_app/quiz/constants.dart';

class Response extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const Response({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
