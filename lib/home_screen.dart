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
              onPressed: () => print('Hey, that tickles'),
              child: const Text('Hey look, a button!'),
            ),
            ElevatedButton(
              onPressed: () => print('Stop that!'),
              child: const Text('Oh no! Another button!'),
            ),
            ElevatedButton(
              onPressed: () => print('I\'m telling mom!!!!'),
              child: const Text('Whatever will you do?'),
            ),
          ],
        ),
      ),
    );
  }
}
