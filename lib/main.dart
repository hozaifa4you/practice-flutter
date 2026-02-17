import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Windows Estimates',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Windows Estimates Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String _currentFortune = 'Your future is uncertain.';

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String? _currentFortune;

  final _fortuneList = [
    'Your future is uncertain.',
    'You will have a great day!',
    'Success is on the horizon.',
    'Challenges may arise, but you will overcome them.',
    'A pleasant surprise awaits you.',
  ];

  void _randomFortune() {
    var random = new Random();
    final int fortune = random.nextInt(_fortuneList.length);

    _currentFortune = _fortuneList[fortune];
    print(_currentFortune);
    setState(() {
      _currentFortune = _currentFortune;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Your fortune is:"),
            Text(
              "${_currentFortune}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _randomFortune,
        tooltip: 'Random Fortune',
        child: const Icon(Icons.add),
      ),
    );
  }
}
