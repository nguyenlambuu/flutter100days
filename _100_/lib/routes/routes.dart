import '../screens/day_001_safearea.dart';
import '../screens/day_002_expanded.dart';
import '../screens/day_003_wrap.dart';
import '../screens/day_004_animated_container.dart';
import '../screens/day_005_opacity.dart';

Map _routes = {
  "SafeArea": Day1SafeArea(),
  "Expanded": Day2Expanded(),
  "Wrap": Day3Wrap(),
  "AnimatedContainer": Day4AnimatedContainer(),
  "Opacity": Day5Opacity()
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
