import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day5Opacity extends StatefulWidget {
  const Day5Opacity({Key? key}) : super(key: key);

  @override
  _Day5OpacityState createState() => _Day5OpacityState();
}

class _Day5OpacityState extends State<Day5Opacity> {
  bool _isOpacity = true;
  bool _animated = true;

  @override
  Widget build(BuildContext context) {
    var opacityWidget = Opacity(
      opacity: _isOpacity ? 1.0 : 0.0,
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.pinkAccent,
          child: Text(
            'Opacity',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    var animatedOpacityWidget = AnimatedOpacity(
      duration: Duration(milliseconds: 900),
      opacity: _isOpacity ? 1.0 : 0.0,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * 0.3,
          color: Colors.pinkAccent,
          child: Text(
            'Animated Opacity',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    var listTileAnimation = ListTile(
      title: Text('Switch to toggle animation'),
      subtitle: _animated ? Text('With animation') : Text('Without animation'),
      trailing: CupertinoSwitch(
        value: _animated,
        onChanged: (bool newVal) {
          setState(() {
            _animated = newVal;
          });
        },
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Opacity-class.html'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              listTileAnimation,
              Text(
                'Tap to toggle Opacity',
                style: TextStyle(fontSize: 32, color: Colors.pinkAccent),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _isOpacity = !_isOpacity;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pinkAccent),
                    ),
                    child: _animated ? animatedOpacityWidget : opacityWidget,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
