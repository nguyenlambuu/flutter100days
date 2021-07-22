import 'package:_100_/components/demo_container.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day21LayoutBuilder extends StatelessWidget {
  const Day21LayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout Builder'),
          actions: [
            HelpIconButton(
                url:
                    'https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html')
          ],
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints contraints) {
              if (contraints.maxWidth > 600) {
                return Center(
                  child: DemoContainer(
                      width: 200, height: 200, color: Colors.pinkAccent),
                );
              } else if (contraints.maxWidth < 350) {
                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DemoContainer(
                          width: 200, height: 200, color: Colors.pinkAccent),
                      DemoContainer(
                          width: 200, height: 200, color: Colors.greenAccent),
                    ],
                  ),
                );
              } else {
                return boxes();
              }
            },
          ),
        ));
  }
}

Widget boxes() {
  const double boxSize = 100.0;
  return Center(
    child: Wrap(
      runSpacing: 10,
      spacing: 20,
      children: List.generate(
        10,
        (index) => DemoContainer(
          width: boxSize,
          height: boxSize,
          color: Colors.red,
        ),
      ),
    ),
  );
}
