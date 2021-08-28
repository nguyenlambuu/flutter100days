import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day49Stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Stack-class.html')
        ],
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.center,
          clipBehavior: Clip.antiAlias,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
