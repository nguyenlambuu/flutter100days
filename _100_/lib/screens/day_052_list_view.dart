import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day52ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/ListView-class.html')
        ],
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Text("Item Data : $index"),
      separatorBuilder: (context, index) => Divider(),
      itemCount: 30,
      scrollDirection: Axis.vertical,
    );
  }
}
