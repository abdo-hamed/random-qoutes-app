import 'package:flutter/material.dart';

class OutputText extends StatelessWidget {
  final String qoute;

  OutputText(this.qoute);

  Widget build(BuildContext context) {
    return Text(qoute, style: TextStyle(fontSize: 16.0));
  }
}
