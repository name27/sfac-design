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
      this.outlineWidth = 1.0,
      this.verticalMargin = -2});

  //키워드    
  final List<Widget?> keyword;

  //텍스트스타일
  final TextStyle? textStyle;

  //간격
  final double spacing;

  //Chip 모서리
  final double borderRadius;

  //배경색
  final Color? backgroundColor;

  //테두리 색
  final Color? outlineColor;

  //테두리 굵기
  final double outlineWidth;

  //수직간격
  final double verticalMargin;

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
        spacing: spacing,
        children: keywordText
            .map((e) => Chip(
                  padding: EdgeInsets.zero,
                  visualDensity:
                      VisualDensity(horizontal: 0.0, vertical: verticalMargin),
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
