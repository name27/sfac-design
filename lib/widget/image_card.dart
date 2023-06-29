import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key, this.child, this.topRadius = 10, this.bottomRadius = 10});
  final Widget? child;
  final double topRadius;
  final double bottomRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topRadius),
        topRight: Radius.circular(topRadius),
        bottomLeft: Radius.circular(bottomRadius),
        bottomRight: Radius.circular(bottomRadius),
      ),
      child: child,
    );
  }
}
