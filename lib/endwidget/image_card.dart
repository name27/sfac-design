import 'package:flutter/material.dart';

class SfImageCard extends StatelessWidget {
  const SfImageCard(
      {super.key, this.image, this.topRadius = 10, this.bottomRadius = 10});
  final Image? image;
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
      child: image,
    );
  }
}
