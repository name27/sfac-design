import 'package:flutter/material.dart';

class SFImageCard extends StatelessWidget {
  const SFImageCard(
      {super.key,
      this.image,
      this.topRadius = 10,
      this.bottomRadius = 10,
      this.borderRadius});
  final Widget? image;
  final double topRadius;
  final double bottomRadius;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ??
          BorderRadius.only(
            topLeft: Radius.circular(topRadius),
            topRight: Radius.circular(topRadius),
            bottomLeft: Radius.circular(bottomRadius),
            bottomRight: Radius.circular(bottomRadius),
          ),
      child: image,
    );
  }
}
