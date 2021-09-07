import 'package:flutter/material.dart';

class DraggableExample extends StatelessWidget {
  const DraggableExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 10.0,
        spacing: 10.0,
        children: [
          const Draggable<int>(
            // 原本的
            child: Icon(Icons.remove_red_eye),
            data: 10,
            // 拖走后的位置
            childWhenDragging: Icon(Icons.repeat),
            // 光标上的
            feedback: Icon(Icons.add),
          ),
          const SizedBox(
            width: 60,
            height: 60,
          ),
          // 可以放下的位置
          DragTarget<int>(
            builder: (context, candidates, rejects) {
              print("builder");
              print(context);
              // 可以被放下的时候的值
              print(candidates);
              // 不可以放下的值
              print(rejects);
              if(candidates.isNotEmpty){
                return const Icon(Icons.ac_unit);
              }
              return const Icon(Icons.margin);
            },
            // 判断是否可用放下
            onWillAccept: (value) => value == 10,
            // 未放下
            onLeave: (value) {
              print("onLeave");
              print(value);
            },
            // 成功放下
            onAccept: (value) {
              print("onAccept");
              print(value);
            },
          )
        ],
      ),
    );
  }
}
