import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day48BoxConstraints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box Constraints'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html')
        ],
      ),
      body: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Click"),
            ),
          ),
        ),
      ),
    );
  }
}
