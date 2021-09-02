import 'package:flutter/material.dart';
import 'package:google_flutter_demo/util.dart';

import 'examples/animated_container_example.dart';
import 'examples/expanded_example.dart';
import 'examples/fade_in_image_example.dart';
import 'examples/fade_transition_example.dart';
import 'examples/floating_action_button_example.dart';
import 'examples/future_builder_example.dart';
import 'examples/inherited_model/inherited_model_example.dart';
import 'examples/opacity_example.dart';
import 'examples/page_view_example.dart';
import 'examples/safearea_example.dart';
import 'examples/sliver_app_bar_example.dart';
import 'examples/stream_builder_example.dart';
import 'examples/table_example.dart';
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
          _buildListItem(context, "InheritedModel", '''''', const InheritedModelExample()),
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
