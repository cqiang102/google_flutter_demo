import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherExample> createState() => _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  Widget _buildContainer = Container(key:const ValueKey("1"),color: Colors.red,width: 200,height: 200,);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: (){
              setState(() {
                _buildContainer = Container(key:const ValueKey("2"),color: Colors.green,width: 100,height: 100,);
              });
            },

            child: AnimatedSwitcher(
              // 改变位置
              // layoutBuilder: ,
              // 转化动画
              transitionBuilder: (child,animation)=>RotationTransition(turns: animation,child: child,),
              duration: const Duration(seconds: 1),
              child: _buildContainer,
            ),
          ),
        ),
      ),
    );
  }

}
