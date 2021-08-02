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
import '../screens/day_018_custom_paint.dart';
import '../screens/day_019_tooltip.dart';
import '../screens/day_020_fitted_box.dart';
import '../screens/day_021_layout_builder.dart';
import '../screens/day_022_absorb_pointer.dart';
import '../screens/day_023_transform.dart';
import '../screens/day_024_backdrop_filter.dart';
import '../screens/day_025_align.dart';
import '../screens/day_026_positioned.dart';
import '../screens/day_027_animated_builder.dart';
import '../screens/day_028_dismissible.dart';

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
  "CustomPaint": Day18CustomPaint(),
  "Tooltip": Day19Tooltip(),
  "FittexBox": Day20FittedBox(),
  "LayoutBuilder": Day21LayoutBuilder(),
  "AbsorbPointer": Day22AbsorbPointer(),
  "Transform": Day23Transform(),
  "BackdropFilter": Day24BackdropFilter(),
  "Align": Day25Align(),
  "Positioned": Day26Positioned(),
  "AnimatedBuilder": Day27AnimatedBuilder(),
  "Dismissible": Day28Dismissible(),
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
