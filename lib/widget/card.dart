import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      this.imageHeight = 145,
      this.titleTextStyle,
      this.subtitleTextStyle,
      this.ketword,
      this.imageTopRadius = 10,
      this.imageBottomRadius = 0,
      this.borderRadius = 10,
      this.outlineColor,
      this.outlineWidth = 1.0});
  final Widget? image;
  final Widget? title;
  final Widget? subtitle;
  final double? width;
  final double? height;
  final double imageHeight;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final List<Widget>? ketword;
  final double imageTopRadius;
  final double imageBottomRadius;
  final double borderRadius;
  final Color? outlineColor;
  final double outlineWidth;

  @override
  Widget build(BuildContext context) {
    List<String> keywords = ['모집중', '무료강의', '사업계획서'];
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
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: width,
          height: imageHeight,
          decoration: BoxDecoration(
            color: SfacColor.primary5,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(imageTopRadius),
                topRight: Radius.circular(imageTopRadius),
                bottomLeft: Radius.circular(imageBottomRadius),
                bottomRight: Radius.circular(imageBottomRadius)),
          ),
          child: Center(
            child: SizedBox(
                width: 72,
                height: 36,
                child: image ?? SvgPicture.asset('assets/svg/logo.svg')),
          ),
        ),
        titleText ?? const SizedBox(),
        subtitleText ?? const SizedBox(),
        Keyword(keyword: keywords.map((e) => Text(e)).toList())
      ]),
    );
  }
}

class OnlyRadius {
  late double topRadius;
  late double bottomRadius;
}
