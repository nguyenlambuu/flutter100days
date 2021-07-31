import 'dart:math';

import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day27AnimatedBuilder extends StatefulWidget {
  @override
  _Day27AnimatedBuilderState createState() => _Day27AnimatedBuilderState();
}

class _Day27AnimatedBuilderState extends State<Day27AnimatedBuilder>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat();
    _rotationAnimation = Tween(begin: 0.0, end: 2 * pi).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Builder'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html')
        ],
      ),
      body: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext ctx, Widget? child) {
            print(_rotationAnimation.value);
            return Transform.rotate(
              angle: _rotationAnimation.value,
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(150),
                    ),
                  ),
                  child: Align(
                    alignment: FractionalOffset(0.1, 0.1),
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
