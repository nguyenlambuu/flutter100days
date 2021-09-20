import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day64TweenAnimationBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation Builder'),
        actions: [HelpIconButton(url: 'https://api.flutter.dev/flutter/widgets/TweenAnimationBuilder-class.html')],
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool repeat = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder<Color>(
        tween: repeat
            ? Tween(begin: Colors.red, end: Colors.green)
            : Tween(begin: Colors.green, end: Colors.red),
        duration: Duration(seconds: 3),
        curve: Curves.bounceInOut,
        builder: (context, value, child) => Container(
          width: 250,
          height: 250,
          color: value,
        ),
        onEnd: () {
          print("Tween Animation Ends....");
          setState(() {
            repeat = !repeat;
          });
        },
      ),
    );
  }
}
