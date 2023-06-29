import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfacBadge extends StatelessWidget {
  const SfacBadge({
    super.key,
    required this.child,
    this.keywordColor,
    this.backgroundColor,
    this.outlineColor,
    this.borderRadius = 4,
    this.width,
    this.height,
    this.verticalMargin = 5,
    this.horizontalMargin = 8,
  });
  final Widget? child;
  final Color? keywordColor;
  final Color? backgroundColor;
  final Color? outlineColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final double verticalMargin;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    // Widget? keywordText;
    // TextStyle? keywordStyle;
    // if (keyword != null) {
    //   keywordStyle =  SfacTextStyle.b5R12(color: SfacColor.grayScale100);
    //   keywordText = AnimatedDefaultTextStyle(
    //     style: keywordStyle,
    //     duration: kThemeChangeDuration,
    //     child: keyword!,
    //   );
    // }
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