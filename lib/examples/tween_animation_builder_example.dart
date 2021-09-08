import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatelessWidget {
  const TweenAnimationBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TweenAnimationBuilder<Color?>(
          tween: ColorTween(begin:Colors.green,end:Colors.red),
          duration: const Duration(seconds: 2),
          child: Container(color: Colors.red,),
          builder: (context,value,child) {
            return ColorFiltered(
                child: child,
                colorFilter: ColorFilter.mode(value!, BlendMode.modulate),);
          },
        ),
      ),
    );
  }
}
