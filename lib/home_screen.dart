import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var promptIndex = 0;

  void buttonPress() {
    promptIndex = 1;
    setState(() {});
    print(promptIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> prompts = [
      'This is [not] my first app!',
      'Hey, that tickles!',
      'Stop that!',
      'I\'m telling mom!!!!',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World!'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(prompts[promptIndex]),
            ElevatedButton(
              child: const Text('Hey look, a button!'),
              onPressed: () => buttonPress(),
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
