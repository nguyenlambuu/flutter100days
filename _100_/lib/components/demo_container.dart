import 'package:flutter/material.dart';

class DemoContainer extends StatelessWidget {
  const DemoContainer({
    Key? key,
    required this.width,
    this.height = 0,
    required this.color,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
