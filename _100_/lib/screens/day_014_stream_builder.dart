import 'dart:async';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day14StreamBuilder extends StatefulWidget {
  const Day14StreamBuilder({Key? key}) : super(key: key);

  @override
  _Day14StreamBuilderState createState() => _Day14StreamBuilderState();
}

class _Day14StreamBuilderState extends State<Day14StreamBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: NumberCounter().stream,
        initialData: null,
        builder: (BuildContext ctx, AsyncSnapshot snapshot) {
          return Container(
            child: Center(
              child: _uiText(snapshot),
            ),
          );
        },
      ),
      appBar: AppBar(
        title: Text('Stream Builder'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html')
        ],
      ),
    );
  }

  _uiText(AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
        return Text(
          'ConnectionState.none\nCurrent Data is ${snapshot.data}',
          style: TextStyle(color: Colors.blue),
        );
      case ConnectionState.waiting:
        return Text(
          'ConnectionState.waiting\nCurrent Data is ${snapshot.data}',
          style: TextStyle(color: Colors.orange),
        );
      case ConnectionState.active:
        return Text(
          'ConnectionState.active\nCurrent Data is ${snapshot.data}',
          style: TextStyle(color: Colors.green),
        );
      case ConnectionState.done:
        return Text(
          'ConnectionState.done\nCurrent Data is ${snapshot.data}',
          style: TextStyle(color: Colors.purple),
        );
    }
  }
}

class NumberCounter {
  var _counter = 0;

  final StreamController<int> _controller = StreamController<int>();

  NumberCounter() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      _controller.sink.add(_counter);

      if (_counter < 5) {
        _counter++;
      } else {
        _controller.close();
      }
    });
  }

  Stream<int> get stream => _controller.stream;
}
