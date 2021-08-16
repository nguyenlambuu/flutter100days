import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day39LimitedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limited Box'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/LimitedBox-class.html')
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: LimitedBox(
                  maxWidth: 150,
                  maxHeight: 150,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              UnconstrainedBox(
                child: LimitedBox(
                  maxWidth: 150,
                  maxHeight: 150,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
