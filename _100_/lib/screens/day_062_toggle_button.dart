import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day62ToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button'),
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

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<bool> selected = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: [
          SizedBox(
              width: 100, height: 100, child: FittedBox(child: Text("edit"))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.wb_sunny, size: 50),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.wb_cloudy, size: 50),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.ac_unit, size: 50),
          )
        ],
        isSelected: selected,
        onPressed: (index) {
          setState(() {
            selected[index] = !selected[index];
          });
        },
        color: Theme.of(context).primaryColor,
        selectedColor: Colors.green,
        fillColor: Colors.green[100],
        focusColor: Colors.red[100],
        hoverColor: Colors.red[100],
        borderColor: Colors.deepPurple[800],
        highlightColor: Colors.black12,
        splashColor: Colors.black,
        selectedBorderColor: Colors.amber[800],
        renderBorder: true,
      ),
    );
  }
}
