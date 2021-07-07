import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day16ClipRRect extends StatelessWidget {
  const Day16ClipRRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/ClipRRect-class.html')
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(8),
            ),
            clipBehavior: Clip.antiAlias,
            child: Container(
              // ! a simple container to text the working....
              color: Colors.redAccent,
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
