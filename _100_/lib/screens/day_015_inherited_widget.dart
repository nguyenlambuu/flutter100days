import 'package:_100_/components/help_icon_button.dart';
import 'package:flutter/material.dart';

class Day15InheritedWidget extends StatelessWidget {
  const Day15InheritedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Widget'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html')
        ],
      ),
      body: SafeArea(
        child: FrogColor(
          color: Colors.green,
          child: Builder(
            builder: (BuildContext innerCtx) {
              return Text(
                'Hello Frog',
                style: TextStyle(color: FrogColor.of(innerCtx).color),
              );
            },
          ),
        ),
      ),
    );
  }
}

class FrogColor extends InheritedWidget {
  const FrogColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;
  static FrogColor of(BuildContext context) {
    final FrogColor? result =
        context.dependOnInheritedWidgetOfExactType<FrogColor>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(FrogColor old) => color != old.color;
}
