import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SelectMenu extends StatelessWidget {
  const SelectMenu(
      {super.key,
      this.icon,
      required this.text,
      this.widthSpacing = 15,
      this.leadingPadding = 20,
      this.menuTextStyle});
  final Widget? icon;
  final String text;
  final double widthSpacing;
  final double leadingPadding;
  final TextStyle? menuTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: icon == null ? 0 : leadingPadding),
        icon ?? const SizedBox(),
        SizedBox(width: widthSpacing),
        DefaultTextStyle(
          style: menuTextStyle ?? SfacTextStyle.b3R16(),
          child: Text(text),
        ),
      ],
    );
  }
}
