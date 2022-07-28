import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  final String mainText;
  MainText(this.mainText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        mainText,
        style: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
        textAlign: TextAlign.start,
      ),
    );
  }
}
