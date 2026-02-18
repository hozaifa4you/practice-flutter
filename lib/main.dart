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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _currentFortune = "Your future is uncertain.";

  final _fortuneList = [
    'Your future is uncertain.',
    'You will have a great day!',
    'Success is on the horizon.',
    'Challenges may arise, but you will overcome them.',
    'A pleasant surprise awaits you.',
  ];

  void _randomFortune() {
    var random = Random();
    final int fortune = random.nextInt(_fortuneList.length);

    _currentFortune = _fortuneList[fortune];
    setState(() {
      _currentFortune = _currentFortune;
    });
  }

  void onPressed() {
    print("Elevated Button Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Card(
              child: Image.asset(
                'assets/images/img1.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Your fortune is:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "$_currentFortune",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _randomFortune,
              child: Text("Get Random Fortune"),
            ),
          ],
        ),
      ),
    );
  }
}
