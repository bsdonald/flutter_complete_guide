import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World!'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('This is [not] my first app!'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Hey look, a button!'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Oh no! Another button!'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Whatever will you do?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
