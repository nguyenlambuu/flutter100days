import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day9PageView extends StatefulWidget {
  const Day9PageView({Key? key}) : super(key: key);

  @override
  _Day9PageViewState createState() => _Day9PageViewState();
}

class _Day9PageViewState extends State<Day9PageView> {
  bool _isVertical = false;
  int pageIndex = 0;
  late PageController _pageController;
  Map<int, MaterialColor> _colors = {
    1: Colors.red,
    2: Colors.green,
    3: Colors.blue,
    4: Colors.pink,
    5: Colors.orange,
  };

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: false);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/PageView-class.html')
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text('Scroll Direction'),
              subtitle: _isVertical
                  ? Text('Direction is vertical')
                  : Text('Direction is horizontal'),
              trailing: CupertinoSwitch(
                value: _isVertical,
                onChanged: (newVal) {
                  setState(() {
                    _isVertical = newVal;
                  });
                },
              ),
            ),
            Container(
              width: 300,
              height: 300,
              child: PageView(
                  controller: _pageController,
                  scrollDirection:
                      _isVertical ? Axis.vertical : Axis.horizontal,
                  children: _colors.entries.map((element) {
                    return buildPageViewItem(element.key, element.value);
                  }).toList()),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  ClipRRect buildPageViewItem(int index, Color color) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        alignment: Alignment.center,
        color: color,
        child: Text('Page number $index'),
      ),
    );
  }
}
