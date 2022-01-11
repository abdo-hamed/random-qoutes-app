import 'package:flutter/material.dart';
import 'textControl.dart';
import 'outputText.dart';

void main(List<String> args) {
  runApp(QouteApp());
}

class QouteApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QouteAppState();
  }
}

class QouteAppState extends State<QouteApp> {
  int _qouteIndex = 0;
  final List<String> _qoutes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
    "The way to get started is to quit talking and begin doing. -Walt Disney",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking. -Steve Jobs",
    "If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. -Oprah Winfrey",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. -James Cameron",
    "Life is what happens when you're busy making other plans. -John Lennon"
  ];

  void _onShowNextClick() {
    setState(() {
      _qouteIndex++;
      if (_qouteIndex == _qoutes.length) {
        _qouteIndex = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Random Qoutes App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            OutputText(_qoutes[_qouteIndex]),
            TextControl(_onShowNextClick)
          ],
        ),
      ),
    ));
  }
}
