import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day20FittedBox extends StatelessWidget {
  const Day20FittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const customBorderRadiusStyle = BorderRadius.only(
      topLeft: Radius.circular(5),
      topRight: Radius.circular(250),
      bottomRight: Radius.circular(150),
      bottomLeft: Radius.circular(100),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/FittedBox-class.html')
        ],
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: customBorderRadiusStyle,
            boxShadow: [
              BoxShadow(
                color: Color(0xFF0099FF),
                spreadRadius: 5,
                offset: Offset(0, 3),
                blurRadius: 7,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: customBorderRadiusStyle,
            child: FittedBox(
              child: Image.network(
                  'https://images.unsplash.com/photo-1618661057302-8b01d93bd898?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1002&q=80'),
              fit: BoxFit.fill,
              alignment: Alignment.topLeft,
            ),
          ),
        ),
      ),
    );
  }
}
