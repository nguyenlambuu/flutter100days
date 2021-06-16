import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import 'components/my_custom_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              titles.length,
              (index) => MyCustomCard(
                title: titles[index],
                index: index,
                press: () => Get.to(routes[titles[index]]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
