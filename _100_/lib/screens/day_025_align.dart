import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day25Align extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Align-class.html')
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.0,
            width: _width,
            color: Colors.blue[50],
            child: Align(
              alignment: Alignment.topRight,
              child: Text('Alignment.topRight'),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 120.0,
            width: _width,
            color: Colors.blue[50],
            child: Align(
              alignment: Alignment(0, 0),
              child: Text('Alignment (0,0)'),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 120.0,
            width: _width,
            color: Colors.blue[50],
            child: Align(
              alignment: FractionalOffset(0, 0),
              child: Text('FractionalOffset(0,0)'),
            ),
          )
        ],
      ),
    );
  }
}
