import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day19Tooltip extends StatelessWidget {
  const Day19Tooltip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltips'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/material/Tooltip-class.html'),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Tooltip(
                  message: 'This is tooltip for Text Widget',
                  preferBelow: false,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.green),
                  child: Text(
                    'Press and hold to show tooltip',
                    softWrap: true,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Tooltip(
                  message: 'High Quality',
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: <Color>[Colors.amber, Colors.green],
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.high_quality),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Tooltip(
                  message: 'This is a flower',
                  waitDuration: Duration(seconds: 2),
                  showDuration: Duration(seconds: 3),
                  height: 50,
                  verticalOffset: -200,
                  preferBelow: false,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1575178114667-c8a832c61f45?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
