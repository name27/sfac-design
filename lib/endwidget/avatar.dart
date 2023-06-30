import 'package:flutter/material.dart';

class SfAvatar extends StatelessWidget {
  const SfAvatar({
    super.key,
    this.child,
    this.radius,
    this.margin,
    this.size = 35,
  });
  final Widget? child;
  final double? radius;
  final double? margin;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 100),
        child: Padding(
          padding: EdgeInsets.all(margin ?? 0),
          child: child,
        ),
      ),
    );
  }
}
