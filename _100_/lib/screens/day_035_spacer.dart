import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day35Spacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    final double padding = deviceData.padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Spacer-class.html')
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 5),
            width: deviceData.size.width / 2,
            height: deviceData.size.height / 2,
            decoration: BoxDecoration(
              border: Border.all(width: 10.0, color: Colors.black),
              borderRadius: BorderRadius.circular(padding),
            ),
            child: Column(
              children: [
                Container(
                  height: 15,
                  margin: EdgeInsets.only(right: padding, left: padding),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(-5),
                      topRight: Radius.circular(-5),
                      bottomLeft: Radius.circular(padding),
                      bottomRight: Radius.circular(padding),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  height: deviceData.size.height / 3,
                  color: Colors.green[200],
                ),
                Spacer(),
                Container(
                  width: deviceData.size.width / 5,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
