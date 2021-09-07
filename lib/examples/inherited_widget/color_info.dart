import 'dart:html';

import 'package:flutter/material.dart';

class ColorInfo extends InheritedWidget with ChangeNotifier {
  ColorInfo({required this.colors, required Widget child})
      : super(child: child);
  final List<Color> colors;

  @override
  bool updateShouldNotify(covariant ColorInfo oldWidget) =>
      oldWidget.colors != colors;

  static ColorInfo of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: ColorInfo)
          as ColorInfo;
}
