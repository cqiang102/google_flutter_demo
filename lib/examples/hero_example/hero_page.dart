import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  Color color;
  HeroPage({required this.color,Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Center(child: Container(color: color,width: 180,height: 180,),),);
  }
}
