import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class Keyword extends StatelessWidget {
  const Keyword(
      {super.key,
      required this.keyword,
      this.borderRadius = 10,
      this.spacing = 5,
      this.backgroundColor,
      this.outlineColor,
      this.textStyle,
      this.outlineWidth  = 1.0});
  final List<Widget?> keyword;
  final TextStyle? textStyle;
  final double spacing;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? outlineColor;
  final double outlineWidth;

  @override
  Widget build(BuildContext context) {
    List<Widget>? keywordText;
    TextStyle? keywordStyle;
    keywordStyle =
        textStyle ?? SfacTextStyle.b5R12(color: SfacColor.grayScale60);
    keywordText = keyword
        .map((e) => AnimatedDefaultTextStyle(
              style: keywordStyle!,
              duration: kThemeChangeDuration,
              child: e!,
            ))
        .toList();
    return Wrap(
        children: keywordText
            .map((e) => Chip(
                  label: e,
                  backgroundColor: backgroundColor ?? SfacColor.grayScale5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    side: BorderSide(
                      color: outlineColor ?? SfacColor.grayScale5,
                      width: outlineWidth,
                    ),
                  ),
                ))
            .toList());
  }
}
