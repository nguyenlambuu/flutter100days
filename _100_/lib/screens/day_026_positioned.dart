import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day26Positioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Positioned-class.html')
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            ),
            SizedBox(height: 20),
            Container(
              height: _height,
              width: _width,
              color: Colors.blue[50],
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.yellow,
                      child: Text("Positioned only place inside Stack"),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    right: _width / 2,
                    bottom: _height / 2,
                    child: Container(
                      color: Colors.blue,
                      child: Text("This is start of top and left"),
                    ),
                  ),
                  Positioned(
                    top: _height / 2,
                    left: _width / 2,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.red,
                      child: Text('This is mid of top and left'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
