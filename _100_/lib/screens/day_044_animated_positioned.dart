import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day44AnimatedPositioned extends StatefulWidget {
  @override
  _Day44AnimatedPositionedState createState() =>
      _Day44AnimatedPositionedState();
}

class _Day44AnimatedPositionedState extends State<Day44AnimatedPositioned> {
  bool _isLong = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Positioned'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/AnimatedPositioned-class.html')
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isLong = !_isLong;
            });
          },
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                AnimatedPositioned(
                  width: 200,
                  height: _isLong ? 300 : 100,
                  curve: Curves.elasticOut,
                  onEnd: () => print("Animation Done"),
                  child: ClipRRect(
                    child: Container(
                      color: _isLong ? Colors.teal : Colors.amber,
                      width: 100,
                      height: 250,
                      child: Center(
                        child: Text(
                          "Click me",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  duration: Duration(seconds: 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
