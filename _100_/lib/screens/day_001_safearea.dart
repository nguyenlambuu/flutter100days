import 'package:flutter/material.dart';

import '../components/demo_container.dart';
import '../components/help_icon_button.dart';

class Day1SafeArea extends StatelessWidget {
  const Day1SafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeArea'),
        actions: [
          HelpIconButton(
            url: 'https://api.flutter.dev/flutter/widgets/SafeArea-class.html',
          )
        ],
      ),
      body: SafeArea(
        child: DemoContainer(
          width: 100,
          height: 100,
          color: Colors.deepOrange,
        ),
      ),
      backgroundColor: Colors.amberAccent,
    );
  }
}
