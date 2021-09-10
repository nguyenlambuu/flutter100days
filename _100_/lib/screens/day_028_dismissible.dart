import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day28Dismissible extends StatefulWidget {
  @override
  _Day28DismissibleState createState() => _Day28DismissibleState();
}

class _Day28DismissibleState extends State<Day28Dismissible> {
  List<int> items = List.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Dismissible-class.html')
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: ValueKey<int>(items[index]),
              child: ListTile(
                title: Text('Item ${items[index]}'),
              ),
              background: Container(
                color: Colors.green,
                child: Icon(Icons.check),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 25),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 25),
              ),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
                direction == DismissDirection.startToEnd
                    ? buildSnackBar(context, index, Colors.green)
                    : buildSnackBar(context, index, Colors.red);
              },
              direction: DismissDirection.horizontal,
              movementDuration: Duration(seconds: 2),
              resizeDuration: Duration(seconds: 2),
            );
          },
        ),
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildSnackBar(
      BuildContext context, int index, Color color) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text("Items ${items[index]} Dismissed"),
      ),
    );
  }
}
