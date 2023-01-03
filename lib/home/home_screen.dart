import 'package:flutter/material.dart';
import 'package:shop_app/home/constants.dart';
import 'package:shop_app/home/prompt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _promptIndex = 0;

  void _buttonPress() {
    setState(() {
      _promptIndex = 1;
    });
    print(_promptIndex);
  }

  @override
  Widget build(BuildContext context) {
    final HomeConstants constants = HomeConstants();
    List<String> prompts = [
      constants.promptOne,
      constants.promptTwo,
      constants.promptThree,
      constants.promptFour,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(constants.title),
      ),
      body: Center(
        child: Column(
          children: [
            Prompt(prompts[_promptIndex]),
            ElevatedButton(
              child: Text(constants.buttonOne),
              onPressed: () => _buttonPress(),
            ),
            ElevatedButton(
              child: Text(constants.buttonTwo),
              onPressed: () => _buttonPress(),
            ),
            ElevatedButton(
              child: Text(constants.buttonThree),
              onPressed: () => _buttonPress(),
            ),
          ],
        ),
      ),
    );
  }
}
