import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';

class SfCard extends StatelessWidget {
  const SfCard(
      {super.key,
      this.child,
      this.outlineWidth = 1.0,
      this.outlineRadius = 10,
      this.outlineColor,
      this.margin = 10,
      this.width,
      this.height});
  final Widget? child;
  final double outlineWidth;
  final double outlineRadius;
  final Color? outlineColor;
  final double margin;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(outlineRadius),
          border: Border.all(
            color: outlineColor ?? SfacColor.grayScale20,
            width: outlineWidth,
          )),
      child: Padding(
        padding: EdgeInsets.all(margin),
        child: SizedBox(width: width, height: height, child: child),
      ),
    );
  }
}
