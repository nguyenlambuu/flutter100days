import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day60DraggableScrollableSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable Scrollable Sheet'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html')
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
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "This is BackSide",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          DraggableScrollableSheet(
            expand: true,
            initialChildSize: 0.10,
            maxChildSize: 0.90,
            minChildSize: 0.10,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.blue[100],
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text('Item ${index + 1}'));
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
