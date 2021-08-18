import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day40PlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Placeholder-class.html')
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 200,
                  color: Colors.redAccent,
                  strokeWidth: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
