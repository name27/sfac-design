import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';

class SfCard extends StatelessWidget {
  const SfCard(
      {super.key,
      this.child,
      this.outlineWidth = 1.0,
      this.outlineRadius = 10,
      this.outlineColor,
      this.margin = 10});
  final Widget? child;
  final double outlineWidth;
  final double outlineRadius;
  final Color? outlineColor;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(margin),
        child: child,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(outlineRadius),
        side: BorderSide(
          color: outlineColor ?? SfacColor.grayScale5,
          width: outlineWidth,
        ),
      ),
    );
  }
}
