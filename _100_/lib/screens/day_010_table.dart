import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day10Table extends StatelessWidget {
  const Day10Table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, TableColumnWidth> columnWidths = {
      0: FractionColumnWidth(0.1),
      1: FractionColumnWidth(0.2),
      2: FractionColumnWidth(0.3),
      3: FractionColumnWidth(0.4),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Table-class.html')
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Table(
            border: TableBorder.all(
              color: Colors.indigo,
              width: 1.0,
            ),
            columnWidths: columnWidths,
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            textBaseline: TextBaseline.alphabetic,
            children: [
              TableRow(children: [
                Container(color: Colors.red, height: 20),
                Container(color: Colors.green, height: 20),
                Container(color: Colors.blue, height: 20),
                Container(color: Colors.yellow, height: 40, child: Text('He'))
              ]),
              TableRow(children: [
                Container(color: Colors.purple, height: 20),
                Container(color: Colors.cyan, height: 20),
                Container(color: Colors.black54, height: 20),
                Container(color: Colors.pink, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.red, height: 20),
                Container(color: Colors.green, height: 20),
                Container(color: Colors.blue, height: 20),
                Container(color: Colors.yellow, height: 20),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
