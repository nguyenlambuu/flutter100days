import '../day_001_safearea.dart';
import '../day_002_expanded.dart';
import '../day_003_wrap.dart';
import '../day_004_animated_container.dart';

Map _routes = {
  "SafeArea": Day1SafeArea(),
  "Expanded": Day2Expanded(),
  "Wrap": Day3Wrap(),
  "AnimatedContainer": Day4AnimatedContainer(),
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
