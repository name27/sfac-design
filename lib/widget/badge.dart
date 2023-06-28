import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge(
      {super.key,
      this.child,
      this.backgroundColor,
      this.outlineColor,
      this.width = 55,
      this.height = 20, this.outlineWidth  = 1.0});
  final Widget? child;
  final Color? backgroundColor;
  final Color? outlineColor;
  final double width;
  final double height;
  final double outlineWidth;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
