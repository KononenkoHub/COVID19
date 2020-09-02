import 'package:flutter/material.dart';

class CustomBehavoir extends ScrollBehavior{
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}