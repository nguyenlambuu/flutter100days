import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day8FloatingActionButton extends StatefulWidget {
  const Day8FloatingActionButton({Key? key}) : super(key: key);

  @override
  _Day8FloatingActionButtonState createState() =>
      _Day8FloatingActionButtonState();
}

class _Day8FloatingActionButtonState extends State<Day8FloatingActionButton> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/material/FloatingActionButton-class.html')
        ],
      ),
      body: Container(
        color: _isDark
            ? Theme.of(context).backgroundColor.withOpacity(0.3)
            : Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.vertical_split),
        onPressed: () {
          setState(() {
            _isDark = !_isDark;
          });
        },
        mini: true,
      ),
      floatingActionButtonLocation: _isDark
          ? FloatingActionButtonLocation.centerFloat
          : FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottomNavigation(isDark: _isDark),
    );
  }
}

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({
    Key? key,
    required bool isDark,
  })  : _isDark = isDark,
        super(key: key);

  final bool _isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: _isDark ? Theme.of(context).primaryColor : Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 20,
            color: Theme.of(context).primaryColor.withOpacity(0.3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            color: _isDark ? Colors.white : Theme.of(context).primaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
            color: _isDark ? Colors.white : Theme.of(context).primaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            color: _isDark ? Colors.white : Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
