import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day33Flexible extends StatefulWidget {
  @override
  _Day33FlexibleState createState() => _Day33FlexibleState();
}

class _Day33FlexibleState extends State<Day33Flexible> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Flexible-class.html')
        ],
      ),
      body: SafeArea(
          child: LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Column(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.black,
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.purple,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.deepOrangeAccent,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
