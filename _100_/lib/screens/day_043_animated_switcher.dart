import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day43AnimatedSwitcher extends StatefulWidget {
  @override
  _Day43AnimatedSwitcherState createState() => _Day43AnimatedSwitcherState();
}

class _Day43AnimatedSwitcherState extends State<Day43AnimatedSwitcher> {
  var _viewItem;

  var _widthItem = ClipRRect(
    child: Container(
      color: Colors.deepOrange,
      width: 250,
      height: 100,
      child: Center(
        child: Text(
          "Click",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    ),
    borderRadius: BorderRadius.circular(20),
  );
  var _heightItem = ClipRRect(
    child: Container(
      color: Colors.teal,
      width: 100,
      height: 250,
      child: Center(
        child: Text(
          "Click",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    ),
    borderRadius: BorderRadius.circular(10),
  );

  @override
  void initState() {
    super.initState();
    _viewItem = _widthItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/AnimatedSwitcher-class.html')
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _viewItem = _viewItem == _widthItem ? _heightItem : _widthItem;
            });
          },
          child: Center(
            child: AnimatedSwitcher(
              child: Container(
                child: _viewItem,
                key: ValueKey<ClipRRect>(_viewItem),
              ),
              duration: Duration(milliseconds: 200),
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(animation),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
