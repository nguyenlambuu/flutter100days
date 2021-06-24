import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day7AnimationController extends StatefulWidget {
  const Day7AnimationController({Key? key}) : super(key: key);

  @override
  _Day7AnimationControllerState createState() =>
      _Day7AnimationControllerState();
}

class _Day7AnimationControllerState extends State<Day7AnimationController>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  final Duration duration = Duration(seconds: 1);

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: duration);

    animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.reset();

    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Controller'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/animation/AnimationController-class.html')
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            _animationController.forward();
          },
          onDoubleTap: () {
            _animationController.reverse();
          },
          onLongPress: () {
            _animationController.repeat();
          },
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                FadeTransition(
                  opacity: animation,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blueGrey[100],
                  ),
                ),
                Text(
                  "Tap to forward\nDoubleTap to backward\nLongpress to repeat",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
