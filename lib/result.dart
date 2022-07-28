import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  final VoidCallback endBtnHandler;

  Result(this.endBtnHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Column(children: [
        Text('You are reached limit!'),
        OutlinedButton(
            onPressed: endBtnHandler,
            child: Text(
              'Back from start',
              style: TextStyle(color: Colors.blue),
            ))
      ]),
    );
  }
}
