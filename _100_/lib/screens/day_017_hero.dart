import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day17Hero extends StatefulWidget {
  const Day17Hero({Key? key}) : super(key: key);

  @override
  _Day17HeroState createState() => _Day17HeroState();
}

class _Day17HeroState extends State<Day17Hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Hero-class.html')
        ],
      ),
      body: Container(
        alignment: Alignment.topRight,
        child: Hero(
          tag: 'laptop',
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NextPage(),
              ),
            ),
            child: Icon(
              Icons.zoom_in,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Hero(
            tag:
                "laptop", // ! we have to main the same identifier [tag] here so that the animation is cool....
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.zoom_out,
                size: 200.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
