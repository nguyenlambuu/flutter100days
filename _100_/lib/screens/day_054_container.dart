import 'dart:math';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day54Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Container-class.html')
        ],
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        //color: Colors.deepOrange,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(50),
        clipBehavior: Clip.none,
        constraints: BoxConstraints.loose(
          Size(300, 300),
        ),
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(50),
        ),
        transform: Matrix4.identity()..rotateZ(pi / 8),
        child: Text("This is inside the Container...."),
      ),
    );
  }
}
