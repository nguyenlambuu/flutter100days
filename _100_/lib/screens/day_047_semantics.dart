import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day47Semantics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indexed Stack'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Semantics-class.html')
        ],
      ),
      body: SafeArea(
        child: Center(
          // A widget that annotates the widget tree with a description of the
          // meaning of the widgets.
          // Used by accessibility tools, search engines, and other semantic
          // analysis software to determine the meaning of the application.
          child: Semantics(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.deepOrange,
              child: Center(
                child: Text(
                  "View code to know detail about Semantics",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            label: "This is simple container....",
            button: false,
            checked: false,
            container: true,
            currentValueLength: 1,
            enabled: true,
            explicitChildNodes: false,
            focusable: false,
            focused: false,
          ),
        ),
      ),
    );
  }
}
