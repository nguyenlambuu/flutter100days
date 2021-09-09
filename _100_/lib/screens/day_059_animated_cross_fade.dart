import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day59AnimatedCrossFade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Cross Fade'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html')
        ],
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _toggle = true;
  _setToggleState() {
    print(_toggle);
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _setToggleState(),
        child: AnimatedCrossFade(
          firstChild: Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                child: Image.network(
                    'https://images.unsplash.com/photo-1606791405792-1004f1718d0c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
                    fit: BoxFit.cover),
                width: 250,
                height: 250,
              ),
              Text(
                "Tap - Show First",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    backgroundColor: Colors.white),
              ),
            ],
          ),
          secondChild: Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                child: Image.network(
                  'https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
                  fit: BoxFit.cover,
                ),
                width: 250,
                height: 250,
              ),
              Text(
                "Tap - Show Second",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    backgroundColor: Colors.white),
              ),
            ],
          ),
          crossFadeState:
              _toggle ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(milliseconds: 500),
          reverseDuration: Duration(milliseconds: 500),
          alignment: Alignment.center,
          firstCurve: Curves.easeIn,
          secondCurve: Curves.easeOut,
        ),
      ),
    );
  }
}
