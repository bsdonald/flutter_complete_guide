import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World!'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('This is [not] my first app!'),
            ElevatedButton(
              child: const Text('Hey look, a button!'),
              onPressed: () => print('Hey, that tickles'),
            ),
            ElevatedButton(
              child: const Text('Oh no! Another button!'),
              onPressed: () => print('Stop that!'),
            ),
            ElevatedButton(
              child: const Text('Whatever will you do?'),
              onPressed: () => print('I\'m telling mom!!!!'),
            ),
          ],
        ),
      ),
    );
  }
}
