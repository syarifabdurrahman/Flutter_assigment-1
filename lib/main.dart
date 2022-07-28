import 'package:flutter/material.dart';
import './text_control.dart';
import './result.dart';
import './text.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  // const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final textChangeList = const [
    {
      'text':
          'The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela'
    },
    {
      'text':
          'The way to get started is to quit talking and begin doing. -Walt Disney'
    },
    {
      'text':
          'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking. -Steve Jobs'
    },
    {
      'text':
          'If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt'
    },
    {
      'text':
          'If you look at what you have in life, you\'ll always have more. If you look at what you don\'t have in life, you\'ll never have enough. -Oprah Winfrey'
    }
  ];

  var _index = 0;

  void reset() {
    setState(() {
      _index = 0;
    });
  }

  void call() {
    if (_index < textChangeList.length) {
      setState(() {
        _index++;
      });
    }
    print('calling this btn');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Assigment'),
              backgroundColor: Colors.redAccent,
            ),
            body: _index < textChangeList.length
                ? TextControls(call, textChangeList, _index)
                : Result(reset)));
  }
}
