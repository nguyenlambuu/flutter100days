import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day13FadeInImage extends StatelessWidget {
  const Day13FadeInImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeIn Image'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/FadeInImage-class.html')
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            FadeInImage.assetNetwork(
              alignment: Alignment.center,
              placeholder: 'assets/images/waiting.jpg',
              image:
                  'https://images.unsplash.com/photo-1609151162377-794faf68b02f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
              fit: BoxFit.fill,
              fadeInCurve: Curves.bounceIn,
              fadeInDuration: Duration(milliseconds: 500),
              fadeOutCurve: Curves.slowMiddle,
              fadeOutDuration: Duration(milliseconds: 500),
            ),
          ],
        ),
      ),
    );
  }
}
