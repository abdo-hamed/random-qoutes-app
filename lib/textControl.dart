import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback onShowNextClick;

  TextControl(this.onShowNextClick);

  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onShowNextClick, child: Text("Show Next"));
  }
}
