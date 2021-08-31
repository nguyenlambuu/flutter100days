import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day51FractionallySizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fractionally Sized Box'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html')
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
      child: FractionallySizedBox(
        widthFactor: 0.7,
        heightFactor: 0.5,
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                "Relative sized using FractionallySizedBox",
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 1),
            ));
          },
          child: Text("This is Button sized by 70% width and 50% height"),
        ),
      ),
    );
  }
}
