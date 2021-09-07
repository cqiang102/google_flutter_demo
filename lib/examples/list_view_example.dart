import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: ListView(
      // 滚动方向
      scrollDirection: Axis.vertical,
      // 从下往上滚动
      reverse: true,
      // 不可滚动
      // physics: NeverScrollableScrollPhysics(),
      // 离开屏幕时进行回收
      addAutomaticKeepAlives: false,
      cacheExtent: 10,
      children: [
        Container(color: Colors.yellow,height: 150,width: 150,),
        Container(color: Colors.blue,height: 150,width: 150,),
        Container(color: Colors.green,height: 150,width: 150,),
        Container(color: Colors.red,height: 150,width: 150,),
        Container(color: Colors.cyan,height: 150,width: 150,),
        Container(color: Colors.green,height: 150,width: 150,),
      ],

    ),);
  }
}
