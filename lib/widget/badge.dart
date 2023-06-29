import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfacBadge extends StatelessWidget {
 const SfacBadge(
      {super.key,
      required this.keyWord,
      required this.keyWordColor,
      this.backgroundColor= SfacColor.primary80,
      this.outlineColor,
      this.borderRadius = 4,
      this.width = 55,
      this.height = 20,
      });

  final String keyWord;
  final Color? keyWordColor;
  final Color? backgroundColor;
  final Color? outlineColor;
  final double borderRadius;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor ?? SfacColor.grayScale5,
          border: Border.all(color: outlineColor ?? SfacColor.grayScale5),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Center(
          child: Text(keyWord,
              style: SfacTextStyle.b5R12(
                  color: keyWordColor ?? SfacColor.grayScale60))),
    );
  }
}