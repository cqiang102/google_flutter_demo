import 'package:flutter/material.dart';
import 'package:google_flutter_demo/examples/safearea_example.dart';
import 'package:google_flutter_demo/util.dart';

import 'examples/expanded_example.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Google Flutter Demo")),
      body: ListView(
        children: [
          _buildListItem(
              context,
              "SafeArea",
              '''异形屏幕保护组件不被遮挡''',
              const SafeAreaExample()),
          _buildListItem(
              context,
              "Expanded",
              '''用于 填充 [Row], [Column], 或 [Flex]''',
              const ExpandedExample()),
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
