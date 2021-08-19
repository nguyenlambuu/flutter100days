import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day42ReorderableListView extends StatefulWidget {
  @override
  _Day42ReorderableListViewState createState() =>
      _Day42ReorderableListViewState();
}

class _Day42ReorderableListViewState extends State<Day42ReorderableListView> {
  final List<int> _items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.15);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.5);

    return Scaffold(
      appBar: AppBar(
        title: Text('Reorder Listview'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/RichText-class.html')
        ],
      ),
      body: SafeArea(
        child: Container(
          child: ReorderableListView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            header: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\nLong press and drag to reorder the list\n",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            children: [
              for (int index = 0; index < _items.length; index++)
                ListTile(
                  key: Key('$index'),
                  title: Text('Item ${_items[index]}'),
                  tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                )
            ],
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }

                _items.insert(newIndex, _items.removeAt(oldIndex));
              });
            },
          ),
        ),
      ),
    );
  }
}
