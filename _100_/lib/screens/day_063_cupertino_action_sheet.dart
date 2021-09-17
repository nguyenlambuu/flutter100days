import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day63CupertinoActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Action Sheet'),
        actions: [HelpIconButton(url: '')],
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
  String _selectedText = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _selectedText,
            style: TextStyle(fontSize: 30, color: Colors.pink),
          ),
          ElevatedButton(
            child: Text("Show Off"),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: Text("Title Action Sheet"),
                  message: Text("Message (Sub Title)"),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text("Hello World"),
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedText = "Hello";
                        });
                      },
                    ),
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      child: Text("Default Action Sheet"),
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedText = "Default";
                        });
                      },
                    ),
                    CupertinoActionSheetAction(
                      isDestructiveAction: true,
                      child: Text("Destructive Action"),
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedText = "Destructive";
                        });
                      },
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        _selectedText = "";
                      });
                    },
                    child: Text("Cancel"),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
