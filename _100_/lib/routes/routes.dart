import '../screens/day_001_safearea.dart';
import '../screens/day_002_expanded.dart';
import '../screens/day_003_wrap.dart';
import '../screens/day_004_animated_container.dart';
import '../screens/day_005_opacity.dart';
import '../screens/day_006_future_builder.dart';
import '../screens/day_007_animation_controller.dart';

Map _routes = {
  "SafeArea": Day1SafeArea(),
  "Expanded": Day2Expanded(),
  "Wrap": Day3Wrap(),
  "AnimatedContainer": Day4AnimatedContainer(),
  "Opacity": Day5Opacity(),
  "FutureBuilder": Day6FutureBuilder(),
  "AnimationController": Day7AnimationController(),
};

get routes {
  return _routes;
}

get titles {
  var listTitle = [];

  _routes.keys.forEach((element) {
    listTitle.add(element);
  });

  return listTitle;
}
