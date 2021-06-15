import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/demo_container.dart';
import 'components/help_icon_button.dart';

class Day2Expanded extends StatefulWidget {
  @override
  _Day2ExpandedState createState() => _Day2ExpandedState();
}

class _Day2ExpandedState extends State<Day2Expanded> {
  bool isExpaned = false;

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Expanded-class.html')
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Switch to see Wrap effect'),
              subtitle: isExpaned
                  ? Text('Layout with Expanded widget')
                  : Text('Layout without Expanded widget'),
              trailing: CupertinoSwitch(
                value: isExpaned,
                onChanged: (bool value) {
                  setState(() {
                    isExpaned = value;
                  });
                },
              ),
            ),
            isExpaned
                ? buildLayoutWithExpanded(_width, _height)
                : buildLayoutWithOutExpaned(_width, _height),
          ],
        ),
      ),
    );
  }

  Column buildLayoutWithExpanded(double _width, double _height) {
    return Column(
      children: [
        buildExpanded(3, _width, Colors.deepOrange),
        buildExpanded(1, _width, Colors.deepPurple),
        buildExpanded(1, _width, Colors.pinkAccent),
      ],
    );
  }

  Expanded buildExpanded(int flex, double width, Color color) {
    return Expanded(
      flex: flex,
      child: DemoContainer(
        width: width,
        color: color,
      ),
    );
  }

  Column buildLayoutWithOutExpaned(double _width, double _height) {
    return Column(
      children: [
        DemoContainer(
          width: _width,
          height: _height * .5,
          color: Colors.redAccent,
        ),
        DemoContainer(
          width: _width,
          height: _height * .3,
          color: Colors.greenAccent,
        ),
        DemoContainer(
          width: _width,
          height: _height * .2,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
