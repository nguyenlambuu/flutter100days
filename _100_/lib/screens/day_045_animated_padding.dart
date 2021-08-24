import 'dart:math';

import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day45AnimatedPadding extends StatefulWidget {
  @override
  _Day45AnimatedPaddingState createState() => _Day45AnimatedPaddingState();
}

class _Day45AnimatedPaddingState extends State<Day45AnimatedPadding> {
  Color _color = Colors.teal;
  double _padding = 8.0;
  double _width = 50;
  double _height = 50;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Padding'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/AnimatedPadding-class.html')
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              final random = Random();
              _padding = random.nextInt(120).toDouble();

              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              _borderRadius = BorderRadius.circular(
                random.nextInt(100).toDouble(),
              );
            });
          },
          child: Center(
            child: AnimatedPadding(
              padding: EdgeInsets.all(_padding),
              duration: Duration(milliseconds: 1000),
              curve: Curves.easeInCubic,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),
                child: Center(
                  child: Text(
                    "Click me",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
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
