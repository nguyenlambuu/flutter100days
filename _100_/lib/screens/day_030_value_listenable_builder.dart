import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day30ValueListenableBuilder extends StatefulWidget {
  @override
  _Day30ValueListenableBuilderState createState() =>
      _Day30ValueListenableBuilderState();
}

class _Day30ValueListenableBuilderState
    extends State<Day30ValueListenableBuilder> {
  final ValueNotifier<int> counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/ValueListenableBuilder-class.html')
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: ValueListenableBuilder(
            valueListenable: counter,
            builder: (context, value, child) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      color: Colors.red,
                      width: 120,
                      height: 100,
                      child: Text("topLeft: $value"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      color: Colors.green,
                      width: 120,
                      height: 100,
                      child: Text("topRight: $value"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      color: Colors.orange,
                      width: 120,
                      height: 100,
                      child: Text("topCenter: $value"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: Colors.black26,
                      width: 120,
                      height: 100,
                      child: Text("centerLeft: $value"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      color: Colors.blueAccent,
                      width: 120,
                      height: 100,
                      child: Text("centerRight: $value"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () => counter.value += 1,
                          child: Icon(Icons.plus_one),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () => counter.value -= 1,
                          child: Icon(Icons.exposure_minus_1),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      color: Colors.purple,
                      width: 120,
                      height: 100,
                      child: Text("bottomLeft: $value"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.lime,
                      width: 120,
                      height: 100,
                      child: Text("bottomCenter: $value"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      color: Colors.pink,
                      width: 120,
                      height: 100,
                      child: Text("bottomRight: $value"),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
