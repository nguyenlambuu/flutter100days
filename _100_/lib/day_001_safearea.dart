import 'package:flutter/material.dart';

class Day1SafeArea extends StatelessWidget {
  const Day1SafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text('1'),
      ),
    );
  }
}
