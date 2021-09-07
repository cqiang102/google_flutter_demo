import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    print(deviceData);

    // 尺寸
    var screenSize = deviceData.size;
    print(screenSize);

    // 方向
    var deviceOrientation = deviceData.orientation;
    print(deviceOrientation);

    // 默认字体大小
    var fontScaling = deviceData.textScaleFactor;
    print(fontScaling);

    // 系统 UI 遮盖部分
    var devicePadding = deviceData.padding;
    print(devicePadding);

    // 无障碍功能设定
    var noAnimations =deviceData.disableAnimations;
    print(noAnimations);

    var platformBrightness = deviceData.platformBrightness;
    print(platformBrightness);
    return Container(color: Colors.white,child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      _buildText(deviceData),
      _buildText(screenSize),
      _buildText(deviceOrientation),
      _buildText(fontScaling),
      _buildText(devicePadding),
      _buildText(noAnimations),
      _buildText(platformBrightness),
    ],),);
  }
  _buildText(var str){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        "$str",
        style: const TextStyle(
          fontSize: 18,
            color: Colors.blue, decoration: TextDecoration.none),
      ),
    );
  }
}
