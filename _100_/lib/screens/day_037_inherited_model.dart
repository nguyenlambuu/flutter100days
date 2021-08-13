import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Model1 {
  Color color;
  Model1(this.color);
}

class Model2 {
  Color color;
  Model2(this.color);
}

class ModelInfo extends InheritedModel<String> {
  ModelInfo(
      {Key? key,
      required this.child,
      required this.model1,
      required this.model2})
      : super(key: key, child: child);

  final Widget child;
  final Model1 model1;
  final Model2 model2;

  static ModelInfo? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ModelInfo>());
  }

  @override
  bool updateShouldNotify(ModelInfo oldWidget) {
    return true;
  }

  @override
  bool updateShouldNotifyDependent(
      ModelInfo oldWidget, Set<String> dependencies) {
    if (dependencies.contains("one") && oldWidget.model1 != model1) {
      return true;
    } else if (dependencies.contains("two") && oldWidget.model2 != model2) {
      return true;
    }
    return false;
  }
}

class Day37InheritedModel extends StatelessWidget {
  const Day37InheritedModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModelInfo(
      model1: Model1(Colors.white),
      model2: Model2(Colors.black),
      child: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final info =
        InheritedModel.inheritFrom<ModelInfo>(context, aspect: "one")!.model1;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Model'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/InheritedModel-class.html')
        ],
      ),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            setState(() {
              info.color =
                  info.color == Colors.purple ? Colors.white : Colors.purple;
            });
          },
          child: Container(
            color: info.color,
            child: Center(
              child: SubWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

class SubWidget extends StatefulWidget {
  const SubWidget({Key? key}) : super(key: key);

  @override
  _SubWidgetState createState() => _SubWidgetState();
}

class _SubWidgetState extends State<SubWidget> {
  @override
  Widget build(BuildContext context) {
    final info =
        InheritedModel.inheritFrom<ModelInfo>(context, aspect: "two")!.model1;

    return InkWell(
      onTap: () {
        setState(() {
          info.color =
              info.color == Colors.black ? Colors.yellow : Colors.black;
        });
      },
      child: Container(
        width: 100,
        height: 100,
        color: info.color,
        child: Text('Subwidget'),
      ),
    );
  }
}
