import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key, this.image, this.topRadius = 10, this.bottomRadius = 10});
  final Image? image;
  final double topRadius;
  final double bottomRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: image,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topRadius),
        topRight: Radius.circular(topRadius),
        bottomLeft: Radius.circular(bottomRadius),
        bottomRight: Radius.circular(bottomRadius),
      ),
    );
  }
}
