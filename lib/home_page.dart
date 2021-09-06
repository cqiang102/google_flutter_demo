import 'package:flutter/material.dart';
import 'package:google_flutter_demo/util.dart';

import 'animated_builder_example.dart';
import 'examples/absorb_pointer_example.dart';
import 'examples/align_example.dart';
import 'examples/animated_container_example.dart';
import 'examples/clip_r_rect_example.dart';
import 'examples/custom_paint_example.dart';
import 'examples/expanded_example.dart';
import 'examples/fade_in_image_example.dart';
import 'examples/fade_transition_example.dart';
import 'examples/fitted_box_example.dart';
import 'examples/floating_action_button_example.dart';
import 'examples/future_builder_example.dart';
import 'examples/hero_example/hero_example.dart';
import 'examples/image_filter_example.dart';
import 'examples/inherited_model/inherited_model_example.dart';
import 'examples/layout_builder_example.dart';
import 'examples/opacity_example.dart';
import 'examples/page_view_example.dart';
import 'examples/positioned_example.dart';
import 'examples/safearea_example.dart';
import 'examples/sliver_app_bar_example.dart';
import 'examples/stream_builder_example.dart';
import 'examples/table_example.dart';
import 'examples/tooltip_example.dart';
import 'examples/transform_example.dart';
import 'examples/wrap_example.dart';

class HomePage extends StatelessWidget {
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
          _buildListItem(context, "AnimatedBuilder", '''绝对定位''', const AnimatedBuilderExample()),
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
