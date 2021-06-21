import 'dart:math';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day6FutureBuilder extends StatefulWidget {
  const Day6FutureBuilder({Key? key}) : super(key: key);

  @override
  _Day6FutureBuilderState createState() => _Day6FutureBuilderState();
}

class _Day6FutureBuilderState extends State<Day6FutureBuilder> {
  final Future fakeApi = Future.delayed(
    Duration(seconds: 1),
    () {
      double randomNumber = Random().nextDouble();
      if (randomNumber <= 0.5) {
        return 'Data success ';
      } else if (randomNumber <= 0.8) {
        return null;
      } else {
        return Future.error("Error");
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html')
        ],
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: fakeApi,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData && snapshot.data != null) {
                return Center(
                  child: Text(snapshot.data.toString(),
                      style: TextStyle(fontSize: 24, color: Colors.green)),
                );
              }

              if (snapshot.data == null) {
                return Center(
                  child: Text('No data',
                      style: TextStyle(fontSize: 24, color: Colors.deepOrange)),
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                    style: TextStyle(fontSize: 24, color: Colors.redAccent),
                  ),
                );
              }

              return Center(
                child: Text('No data'),
              );
            }

            return Center(
              child: SizedBox(
                child: CircularProgressIndicator(),
                width: 60,
                height: 60,
              ),
            );
          },
        ),
      ),
    );
  }
}
