import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day10Table extends StatelessWidget {
  const Day10Table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, TableColumnWidth> columnWidths = {
      // 0: IntrinsicColumnWidth(),
      1: FlexColumnWidth(0.5),
      2: FixedColumnWidth(20),
      3: FractionColumnWidth(0.5),
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
                Container(color: Colors.green, height: 20),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.bottom,
                  child: Container(color: Colors.red, height: 20),
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(color: Colors.blue, height: 20)),
                Container(color: Colors.yellow, height: 40, child: Text('He'))
              ]),
              TableRow(
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  children: [
                    Container(color: Colors.purple, height: 20),
                    Container(color: Colors.cyan, height: 20),
                    Container(color: Colors.black54, height: 64),
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
