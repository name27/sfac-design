import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';

class SfBadge extends StatelessWidget {
  const SfBadge({
    super.key,
    this.child,
    this.backgroundColor,
    this.outlineColor,
    this.borderRadius = 4,
    this.width,
    this.height,
    this.verticalMargin = 5,
    this.horizontalMargin = 8,
  });

  final Widget? child;
  final Color? backgroundColor;
  final Color? outlineColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final double verticalMargin;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor ?? SfacColor.grayScale5,
          border: Border.all(color: outlineColor ?? SfacColor.grayScale5),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: verticalMargin, horizontal: horizontalMargin),
        child: child,
      ),
    );
  }
}
