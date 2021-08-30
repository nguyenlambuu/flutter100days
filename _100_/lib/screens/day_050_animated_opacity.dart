import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day50AnimatedOpacity extends StatefulWidget {
  @override
  _Day50AnimatedOpacityState createState() => _Day50AnimatedOpacityState();
}

class _Day50AnimatedOpacityState extends State<Day50AnimatedOpacity> {
  var _animOpacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html')
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _animOpacity = !_animOpacity;
            });
          },
          child: Center(
            child: AnimatedOpacity(
              opacity: _animOpacity ? 1.0 : 0.5,
              duration: Duration(milliseconds: 500),
              child: Container(
                width: 250,
                height: 250,
                color: Colors.deepOrange,
                child: Center(
                  child: Text(
                    "Click me",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
