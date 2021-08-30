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
import '../screens/day_029_sizedbox.dart';
import '../screens/day_030_value_listenable_builder.dart';
import '../screens/day_031_draggable.dart';
import '../screens/day_032_animated_list.dart';
import '../screens/day_033_flexible.dart';
import '../screens/day_034_media_query.dart';
import '../screens/day_035_spacer.dart';
import '../screens/day_036_animated_icon.dart';
import '../screens/day_037_inherited_model.dart';
import '../screens/day_038_aspect_ratio.dart';
import '../screens/day_039_limited_box.dart';
import '../screens/day_040_place_holder.dart';
import '../screens/day_041_rich_text.dart';
import '../screens/day_042_reorderable_listview.dart';
import '../screens/day_043_animated_switcher.dart';
import '../screens/day_044_animated_positioned.dart';
import '../screens/day_045_animated_padding.dart';
import '../screens/day_046_indexed_stack.dart';
import '../screens/day_047_semantics.dart';
import '../screens/day_048_box_constraints.dart';
import '../screens/day_049_stack.dart';
import '../screens/day_050_animated_opacity.dart';

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
  "SizedBox": Day29SizedBox(),
  "ValueListenableBuilder": Day30ValueListenableBuilder(),
  "Draggable": Day31Draggable(),
  "AnimatedList": Day32AnimatedList(),
  "Flexible": Day33Flexible(),
  "MediaQuery": Day34MediaQuery(),
  "Spacer": Day35Spacer(),
  "AnimatedIcon": Day36AnimatedIcon(),
  "InheritedModel": Day37InheritedModel(),
  "AspectRatio": Day38AspectRatio(),
  "LimitedBox": Day39LimitedBox(),
  "PlaceHolder": Day40PlaceHolder(),
  "RichText": Day41RichText(),
  "ReOrderListView": Day42ReorderableListView(),
  "AnimatedSwitcher": Day43AnimatedSwitcher(),
  "AnimatedPositioned": Day44AnimatedPositioned(),
  "AnimatedPadding": Day45AnimatedPadding(),
  "IndexedStack": Day46IndexedStack(),
  "Semantics": Day47Semantics(),
  "BoxConstraints": Day48BoxConstraints(),
  "Stack": Day49Stack(),
  "AnimatedOpacity": Day50AnimatedOpacity(),
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
