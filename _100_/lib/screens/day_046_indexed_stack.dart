import 'dart:math';

import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day46IndexedStack extends StatefulWidget {
  @override
  _Day46IndexedStackState createState() => _Day46IndexedStackState();
}

class _Day46IndexedStackState extends State<Day46IndexedStack> {
  List colorsList = [
    Colors.red[800],
    Colors.green[800],
    Colors.yellow[800],
    Colors.blue[800],
    Colors.deepOrange[800],
    Colors.deepPurple[800],
  ];

  var _index = 0;

  void increase() {
    setState(() {
      if (_index < colorsList.length - 1) {
        _index++;
      }
    });
  }

  void decrease() {
    setState(() {
      if (_index > 0) {
        _index--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indexed Stack'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/IndexedStack-class.html')
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              IndexedStack(
                index: _index,
                sizing:
                    StackFit.expand, // ! [sizing] is same as [fit] of Stack....
                alignment: Alignment.center, // ! we can align the stack....
                children: <Widget>[
                  for (Color color in colorsList)
                    Container(
                      width: 250,
                      height: 250,
                      color: color,
                      child: Center(
                        child: Text(
                          _index.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                ],
              ),
              Positioned(
                bottom: 1,
                left: 1,
                child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    color: Colors.white,
                    onPressed: () {
                      decrease();
                    }),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_right),
                    color: Colors.white,
                    onPressed: () {
                      increase();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
