import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';
import '../components/demo_container.dart';

class Day3Wrap extends StatefulWidget {
  const Day3Wrap({Key? key}) : super(key: key);

  @override
  _Day3WrapState createState() => _Day3WrapState();
}

class _Day3WrapState extends State<Day3Wrap> {
  bool isRow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/widgets/Wrap-class.html'),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.greenAccent[100],
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text('Switch to see Wrap effect'),
                  subtitle: isRow
                      ? Text('Axis is Horizontal')
                      : Text('Axis is Vertical'),
                  trailing: CupertinoSwitch(
                    value: isRow,
                    onChanged: (bool value) {
                      setState(() {
                        isRow = value;
                      });
                    },
                  ),
                ),
                Wrap(
                  direction: isRow ? Axis.horizontal : Axis.vertical,
                  spacing: 10,
                  runSpacing: 100,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.center,
                  textDirection: TextDirection.ltr,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    DemoContainer(
                        width: 100, height: 100, color: Colors.deepOrange),
                    DemoContainer(
                        width: 200, height: 200, color: Colors.deepPurple),
                    DemoContainer(
                        width: 100, height: 300, color: Colors.pinkAccent),
                    DemoContainer(
                        width: 100, height: 100, color: Colors.yellowAccent),
                    DemoContainer(
                        width: 100, height: 100, color: Colors.redAccent),
                    DemoContainer(
                        width: 200, height: 100, color: Colors.blueAccent),
                    DemoContainer(
                        width: 200, height: 100, color: Colors.blueAccent),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
