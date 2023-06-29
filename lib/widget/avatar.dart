import 'package:flutter/material.dart';

class SfAvatar extends StatelessWidget {
  const SfAvatar({
    super.key,
    this.child,
    this.radius = 35,
    this.margin = 8,
    this.backgroundColor,
  });
  final Widget? child;
  final double radius;
  final double margin;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor ?? Colors.white,
      radius: radius,
      child: Padding(
        padding: EdgeInsets.all(margin),
        child: child,
      ),
    );
  }
}
