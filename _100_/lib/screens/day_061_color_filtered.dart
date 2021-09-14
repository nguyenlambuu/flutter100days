import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day61ColorFiltered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Filtered'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/ColorFiltered-class.html')
        ],
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
        child: Container(
          width: 250,
          height: 250,
          color: Colors.blue,
          child: Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                "https://images.unsplash.com/photo-1606791405792-1004f1718d0c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
