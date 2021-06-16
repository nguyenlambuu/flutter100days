import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day4AnimatedContainer extends StatefulWidget {
  const Day4AnimatedContainer({Key? key}) : super(key: key);

  @override
  _Day4AnimatedContainerState createState() => _Day4AnimatedContainerState();
}

class _Day4AnimatedContainerState extends State<Day4AnimatedContainer> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Controller'),
          actions: [
            HelpIconButton(url: ''),
          ],
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isTapped = !_isTapped;
              });
            },
            child: Center(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.linear,
                width: _isTapped ? 200 : 300,
                height: _isTapped ? 200 : 300,
                decoration: BoxDecoration(
                  color: _isTapped ? Colors.red : Colors.green,
                  borderRadius: _isTapped
                      ? BorderRadius.circular(0)
                      : BorderRadius.circular(300),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _isTapped
                      ? Center(
                          child: Text(
                            'Red',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Center(
                          child: Text(
                            'Green',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                ),
              ),
            ),
          ),
        ));
  }
}
