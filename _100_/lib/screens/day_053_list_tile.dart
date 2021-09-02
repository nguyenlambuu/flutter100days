import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day53ListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile'),
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
    return ListView.builder(
      itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: FittedBox(
            fit: BoxFit.fill,
            child: FlutterLogo(size: 60),
          ),
          title: Text(
            "Item Data : $index",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.star, color: Colors.yellow),
          subtitle: Text("This is the subtitle of $index"),
          isThreeLine: false,
        ),
      ),
      itemCount: 30,
      scrollDirection: Axis.vertical,
    );
  }
}
