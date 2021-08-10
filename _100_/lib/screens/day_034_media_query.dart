import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day34MediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/MediaQuery-class.html')
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: deviceData.viewInsets,
          child: Container(
            width: deviceData.size.width,
            height: deviceData.size.height,
            color: Colors.greenAccent[100],
            child: Center(
              child: Container(
                width: deviceData.size.width * 0.5,
                height: deviceData.size.height * 0.5,
                color: Colors.blue[300],
                child: Center(
                  child: Container(
                    width: deviceData.size.width * 0.25,
                    height: deviceData.size.height * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.yellow[200],
                      borderRadius:
                          BorderRadius.circular(deviceData.padding.bottom),
                    ),
                    child: Center(
                      child: Text(deviceData.orientation == Orientation.portrait
                          ? 'Portrait'
                          : 'Landscape'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
