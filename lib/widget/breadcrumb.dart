import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class Breadcrumb extends StatelessWidget {
  const Breadcrumb({super.key, this.title, this.subtitle, this.middleIcon});
  final Widget? title;
  final Widget? subtitle;
  final Widget? middleIcon;

  @override
  Widget build(BuildContext context) {
    Widget? titleText;
    TextStyle? titleStyle;
    if (title != null) {
      titleStyle = SfacTextStyle.b2M18(color: SfacColor.grayScale80);
      titleText = AnimatedDefaultTextStyle(
        style: titleStyle,
        duration: kThemeChangeDuration,
        child: title!,
      );
    }
    Widget? subtitleText;
    TextStyle? subtitleStyle;
    if (subtitle != null) {
      subtitleStyle = SfacTextStyle.b2M18(color: SfacColor.grayScale80);
      subtitleText = AnimatedDefaultTextStyle(
        style: subtitleStyle,
        duration: kThemeChangeDuration,
        child: subtitle!,
      );
    }
    return Row(
      children: [
        titleText ?? const SizedBox(),
        middleIcon ?? const Icon(Icons.play_arrow, color: SfacColor.grayScale40,size: 15,),
        subtitleText ?? const SizedBox()
      ],
    );
  }
}
