import 'package:flutter/material.dart';

import 'components/help_icon_button.dart';

class Day2Expanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _isExpanded = true;
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        actions: [HelpIconButton(url: '')],
      ),
      body: SafeArea(
        child: Container(
          child: _isExpanded
              ? buildLayoutWithExpanded()
              : buildLayoutWithOutExpaned(_width, _height),
        ),
      ),
    );
  }

  Column buildLayoutWithExpanded() {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.deepOrange,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.deepPurple,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.pinkAccent,
          ),
        )
      ],
    );
  }

  Column buildLayoutWithOutExpaned(double _width, double _height) {
    return Column(
      children: [
        Container(
          width: _width,
          height: _height * .3,
          color: Colors.redAccent,
        ),
        Container(
          width: _width,
          height: _height * .1,
          color: Colors.greenAccent,
        ),
        Container(
          width: _width,
          height: _height * .1,
          color: Colors.blueAccent,
        )
      ],
    );
  }
}
