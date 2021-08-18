import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day41RichText extends StatefulWidget {
  @override
  _Day41RichTextState createState() => _Day41RichTextState();
}

class _Day41RichTextState extends State<Day41RichText> {
  var _text = "John";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Richtext'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/RichText-class.html')
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                textAlign: TextAlign.end,
                textDirection: TextDirection.ltr,
                textScaleFactor: 1.2,
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "We are the ",
                      style: TextStyle(
                          color: Colors.blue[900], fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: "World! ",
                      style: TextStyle(color: Colors.teal[900], fontSize: 25),
                    ),
                    TextSpan(text: "This is "),
                    TextSpan(
                      text: _text,
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            _text = _text == "John" ? "Hello " : "John";
                          });
                        },
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.deepPurple[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Cena ❤️",
                      semanticsLabel: "D&D",
                      style: TextStyle(
                          color: Colors.deepOrange[900],
                          fontSize: 30,
                          fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: "\nNever give up!",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
