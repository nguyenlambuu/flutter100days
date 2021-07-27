import 'dart:ui';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day24BackdropFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backdrop Filter'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html')
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Text('🤪 😎 📷 ☕️ 💰 📖 🐠 ' * 500),
          Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1.5,
                sigmaY: 2.5,
              ),
              child: Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(10),
                color: Colors.black87,
                child: Center(
                    child: Text(
                  "Area Cover By Container is actually blur",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
