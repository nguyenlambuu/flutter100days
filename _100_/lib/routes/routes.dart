import '../screens/day_001_safearea.dart';
import '../screens/day_002_expanded.dart';
import '../screens/day_003_wrap.dart';
import '../screens/day_004_animated_container.dart';
import '../screens/day_005_opacity.dart';
import '../screens/day_006_future_builder.dart';
import '../screens/day_007_animation_controller.dart';
import '../screens/day_008_floating_action_button.dart';
import '../screens/day_009_page_view.dart';
import '../screens/day_010_table.dart';
import '../screens/day_011_sliver_app_bar.dart';
import '../screens/day_012_sliver_grid.dart';
import '../screens/day_013_fade_in_image.dart';
import '../screens/day_014_stream_builder.dart';
import '../screens/day_015_inherited_widget.dart';
import '../screens/day_016_clip_r_rect.dart';
import '../screens/day_017_hero.dart';

Map _routes = {
  "SafeArea": Day1SafeArea(),
  "Expanded": Day2Expanded(),
  "Wrap": Day3Wrap(),
  "AnimatedContainer": Day4AnimatedContainer(),
  "Opacity": Day5Opacity(),
  "FutureBuilder": Day6FutureBuilder(),
  "AnimationController": Day7AnimationController(),
  "FloatingActionButton": Day8FloatingActionButton(),
  "PageView": Day9PageView(),
  "Table": Day10Table(),
  "SliverAppBar": Day11SliverAppBar(),
  "SliverGrid": Day12SliverGrid(),
  "FadeInImage": Day13FadeInImage(),
  "StreamBuilder": Day14StreamBuilder(),
  "InheritedWidget": Day15InheritedWidget(),
  "ClipRRect": Day16ClipRRect(),
  "Hero": Day17Hero(),
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
