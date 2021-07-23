import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day22AbsorbPointer extends StatelessWidget {
  const Day22AbsorbPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Absorb Pointer'),
          actions: [
            HelpIconButton(
                url:
                    'https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html')
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: null,
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 200.0,
                    child: AbsorbPointer(
                      absorbing: true,
                      ignoringSemantics: true,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade400),
                        onPressed: () {
                          print('press');
                        },
                        child: GestureDetector(
                          child: Text('Can you tap me'),
                          onTap: () {
                            print('tap');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text('ListView is Absorbed, so you cannot scroll'),
              AbsorbPointer(
                absorbing: true,
                child: Container(
                  height: 250,
                  child: ListView.builder(
                    itemBuilder: (BuildContext ctx, int index) => ListTile(
                      title: ElevatedButton(
                        child: Text('List View Item ${index + 1}'),
                        onPressed: () {
                          print("List item $index");
                        },
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
