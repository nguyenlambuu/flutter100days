import 'dart:math';

import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day23Transform extends StatefulWidget {
  const Day23Transform({Key? key}) : super(key: key);

  @override
  _Day23TransformState createState() => _Day23TransformState();
}

class _Day23TransformState extends State<Day23Transform> {
  late Color _color;
  late double point;

  @override
  void initState() {
    point = 0.0;
    _color = Colors.pinkAccent;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transform'),
          actions: [
            HelpIconButton(
                url:
                    'https://api.flutter.dev/flutter/widgets/Transform-class.html')
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform(
                  origin: Offset(50, 50),
                  // alignment: Alignment.topRight,
                  transform: Matrix4.skew(point, point)
                    ..translate(point * 10)
                    ..rotateZ(point)
                    ..scale(point + 1),
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    color: _color,
                    child: const Text('Slide to transform'),
                  ),
                ),
                Slider(
                  min: 0.0,
                  max: pi,
                  activeColor: Theme.of(context).copyWith().primaryColor,
                  inactiveColor:
                      Theme.of(context).copyWith().secondaryHeaderColor,
                  value: point,
                  onChanged: (change) {
                    setState(() {
                      print(change);
                      if (change < pi / 4) {
                        _color = Colors.blue;
                      } else if (change < pi / 2) {
                        _color = Colors.green;
                      } else {
                        _color = Colors.pinkAccent;
                      }
                      point = change;
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
