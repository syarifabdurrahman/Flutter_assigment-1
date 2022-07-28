import 'package:assigment_flutter/button_manager.dart';
import 'package:flutter/material.dart';
import './text.dart';

class TextControls extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  final VoidCallback btnHandler;
  final List<Map<String, Object>> text;
  final int textIndex;

  TextControls(this.btnHandler, this.text, this.textIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainText(text[textIndex]['text'] as String),
        BtnManager(btnHandler)
      ],
    );
  }
}
