import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day29SizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/SizedBox-class.html')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Click Me...."),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Card(
                  color: Colors.pinkAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hello World!',
                      style: TextStyle(fontSize: 20),
                    ),
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
