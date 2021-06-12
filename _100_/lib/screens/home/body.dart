import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import 'components/my_custom_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _listTitle = ["SafeArea", "Expanded", "Wrap"];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              _listTitle.length,
              (index) => MyCustomCard(
                title: _listTitle[index],
                index: index,
                press: () => Get.to(routes[_listTitle[index]]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
