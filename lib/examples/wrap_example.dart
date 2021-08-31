import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int itemNum = 3;
    return Container(
      color: Colors.white,
      child: Wrap(
//        方向
        direction: Axis.horizontal,
//        主轴间隔
        spacing: 2,
//        横轴间隔
        runSpacing: 8,
//      item 之间的排列
        alignment: WrapAlignment.spaceAround,

        children: [
          _buildItem(Colors.red,width/itemNum),
          _buildItem(Colors.orange,width/itemNum),
          _buildItem(Colors.blue,width/itemNum),
          _buildItem(Colors.green,width/itemNum),
          _buildItem(Colors.purple,width/itemNum),
          _buildItem(Colors.black,width/itemNum),
          _buildItem(Colors.yellow,width/itemNum),
          _buildItem(Colors.redAccent,width/itemNum),
          _buildItem(Colors.orangeAccent,width/itemNum),
          _buildItem(Colors.blueAccent,width/itemNum),
          _buildItem(Colors.greenAccent,width/itemNum),
        ],
      ),
    );
  }

  _buildItem(Color color, double size) {
    return Container(color: color, width: size, height: size);
  }
}
