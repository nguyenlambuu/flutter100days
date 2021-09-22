import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day65Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Image'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Image-class.html')
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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width / 2,
            child: Center(
              child: Image.asset(
                "images/waiting.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width / 2,
            child: Center(
              child: Image.network(
                "https://images.unsplash.com/photo-1606791405792-1004f1718d0c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
                loadingBuilder: (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : LinearProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : 0.1,
                          ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
