import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Tooltip(
            message: "点击",
            child: Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
          ),
          Material(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.done),
              tooltip: "图标按钮",
            ),
          )
        ],
      ),
    );
  }
}
