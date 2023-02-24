import 'package:flutter/material.dart';
import 'package:shop_app/home/constants.dart';
import 'package:shop_app/home/prompt.dart';
import 'package:shop_app/home/response.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _promptIndex = 0;

  void _buttonPress(value) {
    setState(() {
      _promptIndex = value;
    });
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
        actions: [
          IconButton(
            onPressed: () => _buttonPress(0),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Prompt(prompts[_promptIndex]),
            Response(
              onPressed: () => _buttonPress(1),
              text: constants.buttonOne,
            ),
            Response(
              onPressed: () => _buttonPress(2),
              text: constants.buttonTwo,
            ),
            Response(
              onPressed: () => _buttonPress(3),
              text: constants.buttonThree,
            ),
          ],
        ),
      ),
    );
  }
}
