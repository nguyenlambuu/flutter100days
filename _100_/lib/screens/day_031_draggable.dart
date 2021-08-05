import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day31Draggable extends StatefulWidget {
  @override
  _Day31DraggableState createState() => _Day31DraggableState();
}

class _Day31DraggableState extends State<Day31Draggable> {
  String acceptData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Draggable-class.html')
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  color: Colors.lightBlue[100],
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 2,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: Draggable<String>(
                        data: 'Logo Flutter',
                        child: FlutterLogo(
                          size: 60,
                          curve: Curves.bounceIn,
                          duration: Duration(milliseconds: 100),
                        ),
                        childWhenDragging: Container(
                            height: 100.0,
                            width: 100.0,
                            color: Colors.pinkAccent,
                            child: FlutterLogo(size: 60)),
                        feedback: Opacity(
                          opacity: 0.5,
                          child: FlutterLogo(size: 60),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreenAccent[100],
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 3,
                  child: DragTarget<String>(
                    onAccept: (data) {
                      acceptData = 'onAccepted';
                      print('onAccept $data');
                    },
                    onLeave: (data) {
                      acceptData = 'onLeave';
                      print('onLeave $data');
                    },
                    onMove: (data) {
                      acceptData = 'onMove';
                      print('onMove $data');
                    },
                    onWillAccept: (data) {
                      acceptData = 'onWillAccept';
                      print('onWillAccept $data');
                      return true;
                    },
                    builder: (context, candidateData, rejectedData) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.lightGreen.shade900),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: acceptData == 'onAccepted'
                            ? Center(
                                child: FlutterLogo(
                                size: 200,
                                curve: Curves.easeIn,
                                duration: Duration(milliseconds: 200),
                              ))
                            : acceptData == "onWillAccepted"
                                ? Opacity(
                                    opacity: 0.3,
                                    child: Center(child: FlutterLogo(size: 60)),
                                  )
                                : acceptData == "onLeave"
                                    ? Center(
                                        child: Container(
                                            child: Text("Out of drag Area")),
                                      )
                                    : Center(
                                        child: Container(
                                            child: Text("Drag in to green")),
                                      ),
                      );
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
