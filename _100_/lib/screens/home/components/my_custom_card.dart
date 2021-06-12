import 'package:flutter/material.dart';

typedef void VoidCallback();

// ignore: must_be_immutable
class MyCustomCard extends StatelessWidget {
  const MyCustomCard(
      {Key? key, required this.title, required this.index, required this.press})
      : super(key: key);

  final String title;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black26,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline5),
                Text("Day ${index + 1}",
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
