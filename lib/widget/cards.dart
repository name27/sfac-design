import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';
import 'package:widgets/widget/keyword.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key,
      this.image,
      this.title,
      this.subtitle,
      this.width,
      this.height,
      this.titleTextStyle,
      this.subtitleTextStyle,
      this.keyword,
      this.imageTopRadius = 10,
      this.imageBottomRadius = 10,
      this.borderRadius = 10,
      this.outlineColor,
      this.outlineWidth = 1.0,
      this.bottom});
  final Widget? image;
  final Widget? title;
  final Widget? subtitle;
  final double? width;
  final double? height;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final List<Widget?>? keyword;
  final double imageTopRadius;
  final double imageBottomRadius;
  final double borderRadius;
  final Color? outlineColor;
  final double outlineWidth;
  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    Widget? titleText;
    TextStyle? titleStyle;
    if (title != null) {
      titleStyle =
          titleTextStyle ?? SfacTextStyle.b3B16(color: SfacColor.grayScale100);
      titleText = AnimatedDefaultTextStyle(
        style: titleStyle,
        duration: kThemeChangeDuration,
        child: title!,
      );
    }
    Widget? subtitleText;
    TextStyle? subtitleStyle;
    if (subtitle != null) {
      subtitleStyle = subtitleTextStyle ??
          SfacTextStyle.b5M12(color: SfacColor.grayScale40);
      subtitleText = AnimatedDefaultTextStyle(
        style: subtitleStyle,
        duration: kThemeChangeDuration,
        child: subtitle!,
      );
    }
    return Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(imageTopRadius),
                    topRight: Radius.circular(imageTopRadius),
                    bottomLeft: Radius.circular(imageBottomRadius),
                    bottomRight: Radius.circular(imageBottomRadius)),
                child: image),
            titleText ?? const SizedBox(),
            subtitleText ?? const SizedBox(),
            Keyword(keyword: keyword ?? []),
            bottom ?? const SizedBox()
          ]),
    );
  }
}

class OnlyRadius {
  late double topRadius;
  late double bottomRadius;
}
