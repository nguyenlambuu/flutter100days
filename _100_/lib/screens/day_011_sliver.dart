import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day11SliverAppBar extends StatelessWidget {
  const Day11SliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Sliver AppBar'),
                background: Image.network(
                    'https://images.unsplash.com/photo-1513002749550-c59d786b8e6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'),
                stretchModes: [StretchMode.zoomBackground],
              ),
              backgroundColor: Colors.redAccent,
              brightness: Brightness.dark,
              floating: true,
              elevation: 10.0,
              expandedHeight: 200.0,
              actions: [
                HelpIconButton(
                  url:
                      'https://api.flutter.dev/flutter/widgets/SliverList-class.html',
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  20,
                  (index) => ListTile(
                    title: Text((index + 1).toString()),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
