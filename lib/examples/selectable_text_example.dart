import 'package:flutter/material.dart';

class SelectableTextExample extends StatelessWidget {
  const SelectableTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: SelectableText(
          "my selectable text",
          // 修改显示的文字，需要配合国际化 MaterialApp 中配置
          // toolbarOptions: ToolbarOptions(copy: true),
          style: TextStyle(
            fontSize: 22,
            decoration: TextDecoration.none,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
