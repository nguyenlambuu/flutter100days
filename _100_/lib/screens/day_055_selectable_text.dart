import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day55SelectableText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selectable Text'),
        actions: [HelpIconButton(url: '')],
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
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SelectableText(
          "Lorem ipsum dolor sit amet" +
              "consectetur adipiscing elit. " +
              "Mauris nulla neque, gravida non nibh sollicitudin, " +
              "ornare ullamcorper dolor. " +
              "Cras eu mauris sed ipsum pellentesque consectetur. " +
              "Mauris vehicula risus ac arcu congue ultrices. " +
              "Cras viverra tempus semper. Aliquam erat volutpat. " +
              "Curabitur fermentum diam non odio ornare ultrices.",
          enableInteractiveSelection: true,
          toolbarOptions: ToolbarOptions(
            copy: true,
            cut: true,
            paste: true,
            selectAll: true,
          ),
        ),
      ),
    );
  }
}
