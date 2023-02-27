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

  void _buttonPress() {
    setState(() {
      _promptIndex = _promptIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final HomeConstants constants = HomeConstants();
    List<Map<String, Object>> prompts = [
      {
        'questionText': constants.promptOne,
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': constants.promptTwo,
        'answers': ['Lion', 'Hawk', 'Dolphin', 'Zebra'],
      },
      {
        'questionText': constants.promptThree,
        'answers': ['Trumpet', 'Piano', 'Clarinet', 'Flute'],
      },
    ];

    // List<String> prompts = [
    //   constants.promptOne,
    //   constants.promptTwo,
    //   constants.promptThree,
    //   constants.promptFour,
    // ];

    return Scaffold(
      appBar: AppBar(
        title: Text(constants.title),
        actions: [
          IconButton(
            onPressed: () => _buttonPress(),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Prompt(prompts[_promptIndex]['questionText'] as String),
            ...(prompts[_promptIndex]['answers'] as List<String>).map((answer) {
              return Response(onPressed: _buttonPress, text: answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
