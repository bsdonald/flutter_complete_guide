import 'package:flutter/material.dart';
import 'package:shop_app/quiz/constants.dart';
import 'package:shop_app/quiz/prompt.dart';
import 'package:shop_app/quiz/response.dart';

class QuizHomeScreen extends StatefulWidget {
  const QuizHomeScreen({super.key});

  @override
  State<QuizHomeScreen> createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {
  var _promptIndex = 0;

  final List<Map<String, Object>> prompts = [
    {
      'questionText': HomeConstants().promptOne,
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': HomeConstants().promptTwo,
      'answers': ['Lion', 'Hawk', 'Dolphin', 'Zebra'],
    },
    {
      'questionText': HomeConstants().promptThree,
      'answers': ['Trumpet', 'Piano', 'Clarinet', 'Flute'],
    },
  ];

  void _buttonPress() {
// if (_promptIndex < prompts.length) {}

    setState(() {
      _promptIndex = _promptIndex + 1;
    });
  }

  void _refresh() {
    setState(() {
      _promptIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final HomeConstants constants = HomeConstants();
    List<Map<String, Object>> prompts = [
      {
        'questionText': constants.promptOne,
        'answers': ['prompt', 'Red', 'Green', 'White'],
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

    return Scaffold(
      appBar: AppBar(
        title: Text(constants.title),
        actions: [
          IconButton(
            onPressed: () => _refresh(),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: _promptIndex < prompts.length
          ? Column(
              children: [
                Prompt(prompts[_promptIndex]['questionText'] as String),
                ...(prompts[_promptIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Response(onPressed: _buttonPress, text: answer);
                }).toList(),
              ],
            )
          : const Center(
              child: Text('hooray!'),
            ),
    );
  }
}
