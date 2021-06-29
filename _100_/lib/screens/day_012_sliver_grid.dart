import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day12SliverGrid extends StatelessWidget {
  const Day12SliverGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 20.0,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Sliver Grid'),
              ),
              actions: [
                HelpIconButton(
                    url:
                        'https://api.flutter.dev/flutter/widgets/SliverList-class.html')
              ],
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) => Container(
                        alignment: Alignment.center,
                        color: Colors.teal[100 * ((index % 5) + 1)],
                        child: Text('Grid Item $index'),
                      ),
                  childCount: 30),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 80.0,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 15.0,
                  childAspectRatio: 3 / 4),
            ),
            SliverGrid.extent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1,
              children: List.generate(
                8,
                (index) => Container(
                  alignment: Alignment.center,
                  color: Colors.orange[(index + 1) * 100],
                  child: Text("SliverGrid.extent"),
                ),
              ),
            ),
            SliverGrid.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 6,
              children: List.generate(
                8,
                (index) => Container(
                  alignment: Alignment.center,
                  color: Colors.green[(index + 1) * 100],
                  child: Text("SliverGrid.count"),
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int i) => Container(
                  child: Text('List Item $i'),
                  color: Colors.blue[(i % 5) * 100],
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
