import 'package:flutter/material.dart';
import 'package:google_flutter_demo/util.dart';

import 'examples/about_dialog_example.dart';
import 'examples/alert_dialog_example.dart';
import 'examples/animated_cross_fade_example.dart';
import 'examples/animated_opacity_example.dart';
import 'examples/animated_positioned_example.dart';
import 'examples/animated_switcher_example.dart';
import 'examples/animated_builder_example.dart';
import 'examples/absorb_pointer_example.dart';
import 'examples/align_example.dart';
import 'examples/animated_container_example.dart';
import 'examples/animated_icon_example.dart';
import 'examples/animated_list_example.dart';
import 'examples/animated_padding_example.dart';
import 'examples/animated_text_kit_example.dart';
import 'examples/animated_widget_example.dart';
import 'examples/aspect_ratio_example.dart';
import 'examples/builder_example.dart';
import 'examples/checkbox_list_tile_example.dart';
import 'examples/circular_progress_indicator_and_linear_progress_indicator_example.dart';
import 'examples/clip_oval_example.dart';
import 'examples/clip_path_example.dart';
import 'examples/clip_r_rect_example.dart';
import 'examples/color_filtered_example.dart';
import 'examples/constrained_box_example.dart';
import 'examples/container_example.dart';
import 'examples/cupertino_action_sheet_example.dart';
import 'examples/cupertino_activity_indicator_example.dart';
import 'examples/custom_paint_example.dart';
import 'examples/data_table_example.dart';
import 'examples/default_tab_controller_and_tab_bar_example.dart';
import 'examples/device_info_example.dart';
import 'examples/dismissible_example.dart';
import 'examples/divider_example.dart';
import 'examples/draggable_example.dart';
import 'examples/draggable_scrollable_sheet_example.dart';
import 'examples/drawer_example.dart';
import 'examples/expanded_example.dart';
import 'examples/expansion_panel_example.dart';
import 'examples/fade_in_image_example.dart';
import 'examples/fade_transition_example.dart';
import 'examples/fitted_box_example.dart';
import 'examples/flexible_example.dart';
import 'examples/floating_action_button_example.dart';
import 'examples/flutter_logo_example.dart';
import 'examples/flutter_slidable_example.dart';
import 'examples/fractionally_sized_box_example.dart';
import 'examples/future_builder_example.dart';
import 'examples/grid_view_example.dart';
import 'examples/hero_example/hero_example.dart';
import 'examples/ignore_pointer_example.dart';
import 'examples/image_example.dart';
import 'examples/image_filter_example.dart';
import 'examples/image_filtered_example.dart';
import 'examples/indexed_stack_example.dart';
import 'examples/inherited_model/inherited_model_example.dart';
import 'examples/inherited_widget/inherited_widget_example.dart';
import 'examples/interactive_viewer_example.dart';
import 'examples/layout_builder_example.dart';
import 'examples/limited_box_example.dart';
import 'examples/list_tile_example.dart';
import 'examples/list_view_example.dart';
import 'examples/list_wheel_scroll_view_example.dart';
import 'examples/location_example.dart';
import 'examples/media_query_example.dart';
import 'examples/mouse_region_example.dart';
import 'examples/notification_listener_example.dart';
import 'examples/opacity_example.dart';
import 'examples/package_animations_example.dart';
import 'examples/package_async_example.dart';
import 'examples/package_collection_example.dart';
import 'examples/package_connectivity_example.dart';
import 'examples/package_sqflite_example.dart';
import 'examples/padding_example.dart';
import 'examples/page_view_example.dart';
import 'examples/physical_model_example.dart';
import 'examples/placeholder_example.dart';
import 'examples/positioned_example.dart';
import 'examples/reorderable_list_view_example.dart';
import 'examples/rich_text_example.dart';
import 'examples/rotated_box_example.dart';
import 'examples/safearea_example.dart';
import 'examples/scrollbar_example.dart';
import 'examples/selectable_text_example.dart';
import 'examples/semantics_example.dart';
import 'examples/sensors_plus_example.dart';
import 'examples/shader_mask_example.dart';
import 'examples/sized_box_example.dart';
import 'examples/slider_example.dart';
import 'examples/sliver_app_bar_example.dart';
import 'examples/snack_bar_example.dart';
import 'examples/spacer_example.dart';
import 'examples/stack_example.dart';
import 'examples/stream_builder_example.dart';
import 'examples/switch_list_tile_example.dart';
import 'examples/table_example.dart';
import 'examples/tooltip_example.dart';
import 'examples/transform_example.dart';
import 'examples/tween_animation_builder_example.dart';
import 'examples/url_launcher_example.dart';
import 'examples/value_listenable_builder/value_listenable_builder_example.dart';
import 'examples/wrap_example.dart';
import 'examples/toggle_buttons_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Google Flutter Demo")),
      body: ListView(
        children: [
          _buildListItem(
              context, "SafeArea", '''????????????????????????????????????''', const SafeAreaExample()),
          _buildListItem(
              context,
              "Expanded",
              '''???????????? [Row], [Column], ??? [Flex] ?????????????????????''',
              const ExpandedExample()),
          _buildListItem(context, "Wrap", '''????????? [Row], [Column],?????????????????????''',
              const WrapExample()),
          _buildListItem(context, "AnimatedContainer", '''???????????????????????????''',
              const AnimatedContainerExample()),
          _buildListItem(
              context, "Opacity", '''???????????????''', const OpacityExample()),
          _buildListItem(context, "FutureBuilder", '''????????????''',
              const FutureBuilderExample()),
          _buildListItem(context, "FadeTransition", '''??????????????????''',
              const FadeTransitionExample()),
          _buildListItem(context, "FloatingActionButton", '''Scaffold ???????????????''',
              const FloatingActionButtonExample()),
          _buildListItem(context, "PageView", '''??????????????????''', PageViewExample()),
          _buildListItem(context, "Table", '''??????''', const TableExample()),
          _buildListItem(
              context,
              "SliverAppBar",
              '''SliverAppBar & SliverList & SliverGrid''',
              const SliverAppBarExample()),
          _buildListItem(context, "FadeInImage", '''??????????????????''', const FadeInImageExample()),
          _buildListItem(context, "StreamBuilder", '''????????? [S??????tream] ????????????????????????????????????????????????''', const StreamBuilderExample()),
          _buildListItem(context, "InheritedModel", '''????????????''', const InheritedModelExample()),
          _buildListItem(context, "ClipRRect", '''??????????????????''', const ClipRRectExample()),
          _buildListItem(context, "Hero", '''????????????????????????''', const HeroExample()),
          _buildListItem(context, "CustomPaint", '''????????????''', const CustomPaintExample()),
          _buildListItem(context, "Tooltip", '''???????????????''', const TooltipExample()),
          _buildListItem(context, "FittedBox", '''??????????????????''', const FittedBoxExample()),
          _buildListItem(context, "LayoutBuilder", '''??????????????????''', const LayoutBuilderExample()),
          _buildListItem(context, "AbsorbPointer", '''??????????????????''', const AbsorbPointerExample()),
          _buildListItem(context, "Transform", '''????????????''', const TransformExample()),
          _buildListItem(context, "ImageFilter", '''????????????''', const ImageFilterExample()),
          _buildListItem(context, "Align", '''??????????????????''', const AlignExample()),
          _buildListItem(context, "Positioned", '''????????????''', const PositionedExample()),
          _buildListItem(context, "AnimatedBuilder", '''????????????''', const AnimatedBuilderExample()),
          _buildListItem(context, "Dismissible", '''?????????????????????''', const DismissibleExample()),
          _buildListItem(context, "SizedBox", '''???????????????????????????????????????????????????????????????''', const SizedBoxExample()),
          _buildListItem(context, "ValueListenableBuilder", '''??????????????????''', const ValueListenableBuilderExample()),
          _buildListItem(context, "Draggable", '''?????????????????????''', const DraggableExample()),
          _buildListItem(context, "AnimatedList", '''????????????list''', AnimatedListExample()),
          _buildListItem(context, "Flexible", '''??????????????????????????????''',const FlexibleExample()),
          _buildListItem(context, "MediaQuery", '''????????????''',const MediaQueryExample()),
          _buildListItem(context, "Spacer", '''??????''',const SpacerExample()),
          _buildListItem(context, "InheritedWidget", '''???????????????????????????''',const InheritedWidgetExample()),
          _buildListItem(context, "AnimatedIcon", '''????????????''',const AnimatedIconExample()),
          _buildListItem(context, "AspectRatio", '''??????????????????''',const AspectRatioExample()),
          _buildListItem(context, "LimitedBox", '''??????????????????????????????????????????????????????''',const LimitedBoxExample()),
          _buildListItem(context, "Placeholder", '''????????????????????????''',const PlaceholderExample()),
          _buildListItem(context, "RichText", '''?????????????????????''',const RichTextExample()),
          _buildListItem(context, "ReorderableListView", '''???????????? Item ???????????????''',const ReorderableListViewExample()),
          _buildListItem(context, "AnimatedSwitcher", '''??????????????????''',const AnimatedSwitcherExample()),
          _buildListItem(context, "AnimatedPositioned", '''????????????????????????''',const AnimatedPositionedExample()),
          _buildListItem(context, "AnimatedPadding", '''???????????????????????????''',const AnimatedPaddingExample()),
          _buildListItem(context, "IndexedStack", '''??????????????????????????????''',const IndexedStackExample()),
          _buildListItem(context, "Semantics", '''????????????''',const SemanticsExample()),
          _buildListItem(context, "ConstrainedBox", '''??????????????????''',const ConstrainedBoxExample()),
          _buildListItem(context, "Stack", '''????????????''',const StackExample()),
          _buildListItem(context, "AnimatedOpacity", '''??????????????????????????????''',const AnimatedOpacityExample()),
          _buildListItem(context, "FractionallySizedBox", '''??????????????????????????????''',const FractionallySizedBoxExample()),
          _buildListItem(context, "ListView", '''????????????''',const ListViewExample()),
          _buildListItem(context, "ListTile", '''????????????????????????''',const ListTileExample()),
          _buildListItem(context, "Container", '''????????????''',const ContainerExample()),
          _buildListItem(context, "SelectableText", '''????????????????????????''',const SelectableTextExample()),
          _buildListItem(context, "DataTable", '''????????????''',const DataTableExample()),
          _buildListItem(context, "Slider", '''??????????????????????????????''',const SliderExample()),
          _buildListItem(context, "AlertDialog", '''??????''',const AlertDialogExample()),
          _buildListItem(context, "AnimatedCrossFade", '''??????????????????????????????''',const AnimatedCrossFadeExample()),
          _buildListItem(context, "DraggableScrollableSheet", '''????????????????????????????????????''',const DraggableScrollableSheetExample()),
          _buildListItem(context, "ColorFiltered", '''????????????''',const ColorFilteredExample()),
          _buildListItem(context, "ToggleButtons", '''???????????????''', const ToggleButtonsExample()),
          _buildListItem(context, "CupertinoActionSheet", '''Ios ?????????????????????''', const CupertinoActionSheetExample()),
          _buildListItem(context, "TweenAnimationBuilder", '''??????????????????''', const TweenAnimationBuilderExample()),
          _buildListItem(context, "Image", '''????????????''', const ImageExample()),
          _buildListItem(context, "DefaultTabController & TabBar", '''DefaultTabController & TabBar & TabBarView''', const DefaultTabControllerAndTabBarExample()),
          _buildListItem(context, "Drawer", '''????????????''', const DrawerExample()),
          _buildListItem(context, "SnackBar", '''????????????''', const SnackBarExample()),
          _buildListItem(context, "ListWheelScrollView", '''????????????ListView''', const ListWheelScrollViewExample()),
          _buildListItem(context, "ShaderMask", '''???????????????''', const ShaderMaskExample()),
          _buildListItem(context, "NotificationListener", '''????????????????????????''', const NotificationListenerExample()),
          _buildListItem(context, "Builder", '''?????????????????? context ,??????????????????????????????????????????''', const BuilderExample()),
          _buildListItem(context, "ClipPath", '''???????????????''', const ClipPathExample()),
          _buildListItem(context, "CircularProgressIndicator & LinearProgressIndicator", '''???????????????''', const CircularProgressIndicatorAndLinearProgressIndicatorExample()),
          _buildListItem(context, "Divider", '''?????????''', const DividerExample()),
          _buildListItem(context, "IgnorePointer", '''????????????''', const IgnorePointerExample()),
          _buildListItem(context, "CupertinoActivityIndicator", '''Ios ??????????????????''', const CupertinoActivityIndicatorExample()),
          _buildListItem(context, "ClipOval", '''???????????????''', const ClipOvalExample()),
          _buildListItem(context, "AnimatedWidget", '''???????????????''', const AnimatedWidgetExample()),
          _buildListItem(context, "Padding", '''???????????????''', const PaddingExample()),
          _buildListItem(context, "CheckboxListTile", '''??????????????? ListTitle''', const CheckboxListTileExample()),
          _buildListItem(context, "AboutDialog", '''?????? App ????????????''', const AboutDialogExample()),
          _buildListItem(context, "Package:async", '''dart ?????????''', const PackageAsyncExample()),
          _buildListItem(context, "url_launcher", '''???????????? App''', const UrlLauncherExample()),
          _buildListItem(context, "InteractiveViewer", '''???????????????????????????''', const InteractiveViewerExample()),
          _buildListItem(context, "GridView", '''????????????''', const GridViewExample()),
          _buildListItem(context, "SwitchListTile", '''??????????????? ListTile''', const SwitchListTileExample()),
          _buildListItem(context, "location", '''????????????''', const LocationExample()),
          _buildListItem(context, "device_info", '''????????????''', const DeviceInfoExample()),
          _buildListItem(context, "ImageFiltered", '''???????????????????????????''', const ImageFilteredExample()),
          _buildListItem(context, "PhysicalModel", '''??????''', const PhysicalModelExample()),
          _buildListItem(context, "Package:animations", '''?????????''', const PackageAnimationsExample()),
          _buildListItem(context, "Package:flutter_slidable", '''??????????????????''', const FlutterSlidableExample()),
          _buildListItem(context, "RotatedBox", '''??????''', const RotatedBoxExample()),
          _buildListItem(context, "ExpansionPanel", '''??????????????????''', const ExpansionPanelExample()),
          _buildListItem(context, "Scrollbar", '''???????????????''', const ScrollbarExample()),
          _buildListItem(context, "package:connectivity", '''????????????''', const PackageConnectivityExample()),
          _buildListItem(context, "FlutterLogo", '''Flutter Logo''', const FlutterLogoExample()),
          _buildListItem(context, "animated_text_kit", '''????????????''', const AnimatedTextKitExample()),
          _buildListItem(context, "MouseRegion", '''??????''', const MouseRegionExample()),
          _buildListItem(context, "Sensors_plus", '''??????????????????????????????''', const SensorsPlusExample()),
          _buildListItem(context, "package:collection", '''???????????????''', const PackageCollectionExample()),
        ],
      ),
    );
  }

  _buildListItem(
      BuildContext context, String title, String subtitle, Widget page) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        pagePush(context, page);
      },
    );
  }
}
