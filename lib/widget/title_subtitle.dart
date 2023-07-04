import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfTitleSubtitle extends StatelessWidget {
  const SfTitleSubtitle(
      {super.key,
      required this.title,
      required this.subtitle,
      this.titleTextStyle,
      this.subTitleTextStyle,
      this.titleOverflow,
      this.titleMaxLine,
      this.subTitleOverflow,
      this.subTitleMaxLine,
      this.spaceing = 10});
  final String title;
  final String subtitle;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;
  final TextOverflow? titleOverflow;
  final int? titleMaxLine;
  final TextOverflow? subTitleOverflow;
  final int? subTitleMaxLine;
  final double spaceing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          overflow: titleOverflow,
          maxLines: titleMaxLine,
          style: titleTextStyle ?? SfacTextStyle.b3B16(),
        ),
        SizedBox(height: spaceing),
        Text(
          subtitle,
          overflow: subTitleOverflow,
          maxLines: subTitleMaxLine,
          style: subTitleTextStyle ??
              SfacTextStyle.b5R12(color: SfacColor.grayScale60),
        ),
      ],
    );
  }
}
