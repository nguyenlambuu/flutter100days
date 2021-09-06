import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day56DataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/material/DataTable-class.html')
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
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(sortAscending: true, sortColumnIndex: 2, columns: [
          DataColumn(
            label: Text("Name"),
            numeric: false,
          ),
          DataColumn(label: Text("DOB"), numeric: false),
          DataColumn(
            label: Text("Age"),
            numeric: true,
            onSort: (columnIndex, ascending) => true,
          ),
          DataColumn(label: Text("City"), numeric: false),
          DataColumn(label: Text("Mark1"), numeric: true),
          DataColumn(label: Text("Mark2"), numeric: true),
          DataColumn(label: Text("Mark3"), numeric: true)
        ], rows: [
          DataRow(cells: [
            DataCell(Text("Sanju")),
            DataCell(Text("24/04/1999")),
            DataCell(Text("21")),
            DataCell(Text("CBE")),
            DataCell(Text("10")),
            DataCell(Text("20")),
            DataCell(Text("10"))
          ]),
          DataRow(cells: [
            DataCell(Text("Shari")),
            DataCell(Text("11/07/2005")),
            DataCell(Text("21")),
            DataCell(Text("CBE")),
            DataCell(Text("90")),
            DataCell(Text("100")),
            DataCell(Text("90"))
          ]),
          DataRow(cells: [
            DataCell(
              Text("Fill Name"),
              placeholder: true,
              showEditIcon: true,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) =>
                      Card(child: Center(child: Text("You can edit here...."))),
                );
              },
            ),
            DataCell(Text("15/08/1998")),
            DataCell(Text("22")),
            DataCell(Text("CBE")),
            DataCell(Text("85")),
            DataCell(Text("88")),
            DataCell(Text("80"))
          ]),
          DataRow(cells: [
            DataCell(Text("Ram")),
            DataCell(Text("13/09/1999")),
            DataCell(Text("21")),
            DataCell(Text("CBE")),
            DataCell(Text("99")),
            DataCell(Text("89")),
            DataCell(Text("88"))
          ]),
          DataRow(cells: [
            DataCell(Text("Pavi")),
            DataCell(Text("25/04/1999")),
            DataCell(Text("21")),
            DataCell(Text("CBE")),
            DataCell(Text("86")),
            DataCell(Text("85")),
            DataCell(Text("84"))
          ]),
          DataRow(cells: [
            DataCell(Text("Nivi")),
            DataCell(Text("30/09/1999")),
            DataCell(Text("21")),
            DataCell(Text("KOZ")),
            DataCell(Text("50")),
            DataCell(Text("59")),
            DataCell(Text("86"))
          ]),
        ]),
      ),
    );
  }
}
