import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day36AnimatedIcon extends StatefulWidget {
  @override
  _Day36AnimatedIconState createState() => _Day36AnimatedIconState();
}

class _Day36AnimatedIconState extends State<Day36AnimatedIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animationIcon;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animationIcon = Tween(begin: 1.0, end: 0.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.repeat();
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Spacer-class.html')
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                verticalDirection: VerticalDirection.down,
                runAlignment: WrapAlignment.center,
                runSpacing: 10,
                spacing: 10,
                children: <Widget>[
                  AnimatedIcon(
                    icon: AnimatedIcons.pause_play,
                    progress: animationIcon,
                    size: 50,
                    color: Colors.lightGreen,
                  ),
                  AnimatedIcon(
                    icon: AnimatedIcons.arrow_menu,
                    progress: animationIcon,
                    size: 120,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
