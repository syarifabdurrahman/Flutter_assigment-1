import 'package:flutter/material.dart';

class BtnManager extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  final VoidCallback btnHandler;

  BtnManager(this.btnHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: OutlinedButton(
          child: Text('Next Quote'),
          onPressed: btnHandler,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          )),
    );
  }
}
