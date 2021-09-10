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
              context, "SafeArea", '''异形屏幕保护组件不被遮挡''', const SafeAreaExample()),
          _buildListItem(
              context,
              "Expanded",
              '''用于填充 [Row], [Column], 或 [Flex] 按比例划分区域''',
              const ExpandedExample()),
          _buildListItem(context, "Wrap", '''类似于 [Row], [Column],可以自适应换行''',
              const WrapExample()),
          _buildListItem(context, "AnimatedContainer", '''提供动画功能的容器''',
              const AnimatedContainerExample()),
          _buildListItem(
              context, "Opacity", '''让组件透明''', const OpacityExample()),
          _buildListItem(context, "FutureBuilder", '''异步构建''',
              const FutureBuilderExample()),
          _buildListItem(context, "FadeTransition", '''淡入淡出动画''',
              const FadeTransitionExample()),
          _buildListItem(context, "FloatingActionButton", '''Scaffold 的浮动按钮''',
              const FloatingActionButtonExample()),
          _buildListItem(context, "PageView", '''页面切换动画''', PageViewExample()),
          _buildListItem(context, "Table", '''表格''', const TableExample()),
          _buildListItem(
              context,
              "SliverAppBar",
              '''SliverAppBar & SliverList & SliverGrid''',
              const SliverAppBarExample()),
          _buildListItem(context, "FadeInImage", '''图片延时加载''', const FadeInImageExample()),
          _buildListItem(context, "StreamBuilder", '''基于与 [S​​tream] 交互的最新快照构建自身的小部件。''', const StreamBuilderExample()),
          _buildListItem(context, "InheritedModel", '''状态管理''', const InheritedModelExample()),
          _buildListItem(context, "ClipRRect", '''组件形状裁剪''', const ClipRRectExample()),
          _buildListItem(context, "Hero", '''页面跳转缩放过度''', const HeroExample()),
          _buildListItem(context, "CustomPaint", '''画布绘图''', const CustomPaintExample()),
          _buildListItem(context, "Tooltip", '''组件小提示''', const TooltipExample()),
          _buildListItem(context, "FittedBox", '''组件大小适配''', const FittedBoxExample()),
          _buildListItem(context, "LayoutBuilder", '''判断屏幕大小''', const LayoutBuilderExample()),
          _buildListItem(context, "AbsorbPointer", '''屏蔽点击事件''', const AbsorbPointerExample()),
          _buildListItem(context, "Transform", '''旋转扭曲''', const TransformExample()),
          _buildListItem(context, "ImageFilter", '''模糊效果''', const ImageFilterExample()),
          _buildListItem(context, "Align", '''组件相对位置''', const AlignExample()),
          _buildListItem(context, "Positioned", '''绝对定位''', const PositionedExample()),
          _buildListItem(context, "AnimatedBuilder", '''构建动画''', const AnimatedBuilderExample()),
          _buildListItem(context, "Dismissible", '''可以滑动的组件''', const DismissibleExample()),
          _buildListItem(context, "SizedBox", '''一个有特定大小的组件，让子组件也跟随其大小''', const SizedBoxExample()),
          _buildListItem(context, "ValueListenableBuilder", '''数据监听变化''', const ValueListenableBuilderExample()),
          _buildListItem(context, "Draggable", '''可以拖动的组件''', const DraggableExample()),
          _buildListItem(context, "AnimatedList", '''带动画的list''', AnimatedListExample()),
          _buildListItem(context, "Flexible", '''相对父容器的弹性布局''',const FlexibleExample()),
          _buildListItem(context, "MediaQuery", '''媒体查询''',const MediaQueryExample()),
          _buildListItem(context, "Spacer", '''占位''',const SpacerExample()),
          _buildListItem(context, "InheritedWidget", '''数据共享，状态管理''',const InheritedWidgetExample()),
          _buildListItem(context, "AnimatedIcon", '''动画图标''',const AnimatedIconExample()),
          _buildListItem(context, "AspectRatio", '''固定款高比例''',const AspectRatioExample()),
          _buildListItem(context, "LimitedBox", '''创建一个仅在不受约束时限制其大小的框''',const LimitedBoxExample()),
          _buildListItem(context, "Placeholder", '''加载组件前，占位''',const PlaceholderExample()),
          _buildListItem(context, "RichText", '''文字中特殊效果''',const RichTextExample()),
          _buildListItem(context, "ReorderableListView", '''可以拖动 Item 的列表组件''',const ReorderableListViewExample()),
          _buildListItem(context, "AnimatedSwitcher", '''组件切换动画''',const AnimatedSwitcherExample()),
          _buildListItem(context, "AnimatedPositioned", '''组件移动位置动画''',const AnimatedPositionedExample()),
          _buildListItem(context, "AnimatedPadding", '''组件修改内边距动画''',const AnimatedPaddingExample()),
          _buildListItem(context, "IndexedStack", '''可切换层数的层叠布局''',const IndexedStackExample()),
          _buildListItem(context, "Semantics", '''组件语意''',const SemanticsExample()),
          _buildListItem(context, "ConstrainedBox", '''组件大小约束''',const ConstrainedBoxExample()),
          _buildListItem(context, "Stack", '''层叠布局''',const StackExample()),
          _buildListItem(context, "AnimatedOpacity", '''改变组件透明度的动画''',const AnimatedOpacityExample()),
          _buildListItem(context, "FractionallySizedBox", '''使用百分比尺寸的组件''',const FractionallySizedBoxExample()),
          _buildListItem(context, "ListView", '''列表组件''',const ListViewExample()),
          _buildListItem(context, "ListTile", '''列表中规范的组件''',const ListTileExample()),
          _buildListItem(context, "Container", '''容器组件''',const ContainerExample()),
          _buildListItem(context, "SelectableText", '''可选择复制的文字''',const SelectableTextExample()),
          _buildListItem(context, "DataTable", '''数据表格''',const DataTableExample()),
          _buildListItem(context, "Slider", '''类似音量选择的拖动条''',const SliderExample()),
          _buildListItem(context, "AlertDialog", '''弹窗''',const AlertDialogExample()),
          _buildListItem(context, "AnimatedCrossFade", '''组件交叉淡入淡出动画''',const AnimatedCrossFadeExample()),
          _buildListItem(context, "DraggableScrollableSheet", '''可上拉的底部滚动页面组件''',const DraggableScrollableSheetExample()),
          _buildListItem(context, "ColorFiltered", '''颜色蒙版''',const ColorFilteredExample()),
          _buildListItem(context, "ToggleButtons", '''开关按钮组''', const ToggleButtonsExample()),
          _buildListItem(context, "CupertinoActionSheet", '''Ios 风格底部弹出框''', const CupertinoActionSheetExample()),
          _buildListItem(context, "TweenAnimationBuilder", '''构建简单动画''', const TweenAnimationBuilderExample()),
          _buildListItem(context, "Image", '''展示图片''', const ImageExample()),
          _buildListItem(context, "DefaultTabController & TabBar", '''DefaultTabController & TabBar & TabBarView''', const DefaultTabControllerAndTabBarExample()),
          _buildListItem(context, "Drawer", '''侧边抽屉''', const DrawerExample()),
          _buildListItem(context, "SnackBar", '''提示消息''', const SnackBarExample()),
          _buildListItem(context, "ListWheelScrollView", '''环形滚动ListView''', const ListWheelScrollViewExample()),
          _buildListItem(context, "ShaderMask", '''组件着色器''', const ShaderMaskExample()),
          _buildListItem(context, "NotificationListener", '''组件向上传递通知''', const NotificationListenerExample()),
          _buildListItem(context, "Builder", '''构建一个新的 context ,在父组件还没构建时访问父组件''', const BuilderExample()),
          _buildListItem(context, "ClipPath", '''自定义形状''', const ClipPathExample()),
          _buildListItem(context, "CircularProgressIndicator & LinearProgressIndicator", '''加载中动画''', const CircularProgressIndicatorAndLinearProgressIndicatorExample()),
          _buildListItem(context, "Divider", '''分割线''', const DividerExample()),
          _buildListItem(context, "IgnorePointer", '''忽略交互''', const IgnorePointerExample()),
          _buildListItem(context, "CupertinoActivityIndicator", '''Ios 加载中的动画''', const CupertinoActivityIndicatorExample()),
          _buildListItem(context, "ClipOval", '''裁剪成圆形''', const ClipOvalExample()),
          _buildListItem(context, "AnimatedWidget", '''自定义动画''', const AnimatedWidgetExample()),
          _buildListItem(context, "Padding", '''设置内边距''', const PaddingExample()),
          _buildListItem(context, "CheckboxListTile", '''带选择框的 ListTitle''', const CheckboxListTileExample()),
          _buildListItem(context, "AboutDialog", '''关于 App 法律协议''', const AboutDialogExample()),
          _buildListItem(context, "Package:async", '''dart 异步包''', const PackageAsyncExample()),
          _buildListItem(context, "url_launcher", '''打开其他 App''', const UrlLauncherExample()),
          _buildListItem(context, "InteractiveViewer", '''让组件手动放大缩小''', const InteractiveViewerExample()),
          _buildListItem(context, "GridView", '''网格布局''', const GridViewExample()),
          _buildListItem(context, "SwitchListTile", '''开关、单选 ListTile''', const SwitchListTileExample()),
          _buildListItem(context, "location", '''位置信息''', const LocationExample()),
          _buildListItem(context, "device_info", '''设备信息''', const DeviceInfoExample()),
          _buildListItem(context, "ImageFiltered", '''模糊效果，像素转换''', const ImageFilteredExample()),
          _buildListItem(context, "PhysicalModel", '''阴影''', const PhysicalModelExample()),
          _buildListItem(context, "Package:animations", '''动画库''', const PackageAnimationsExample()),
          _buildListItem(context, "Package:flutter_slidable", '''右滑左滑选项''', const FlutterSlidableExample()),
          _buildListItem(context, "RotatedBox", '''旋转''', const RotatedBoxExample()),
          _buildListItem(context, "ExpansionPanel", '''右滑左滑选项''', const ExpansionPanelExample()),
          _buildListItem(context, "Scrollbar", '''显示滚动条''', const ScrollbarExample()),
          _buildListItem(context, "package:connectivity", '''网络状态''', const PackageConnectivityExample()),
          _buildListItem(context, "FlutterLogo", '''Flutter Logo''', const FlutterLogoExample()),
          _buildListItem(context, "animated_text_kit", '''文字动画''', const AnimatedTextKitExample()),
          _buildListItem(context, "MouseRegion", '''鼠标''', const MouseRegionExample()),
          _buildListItem(context, "Sensors_plus", '''陀螺仪和加速度传感器''', const SensorsPlusExample()),
          _buildListItem(context, "package:collection", '''集合工具类''', const PackageCollectionExample()),
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
