import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfAccordion extends StatefulWidget {
  const SfAccordion({
    super.key,
    required this.defaultIcon,
    this.selectedIcon,
    this.title,
    this.content,
    this.contentBackgroundColor,
    this.contentRadius = 10,
    this.titleTextStyle,
    this.contentTextStyle,
    this.contentPadding,
    this.contentMargin,
    this.width,
    this.titleWidth,
  });
  final Widget defaultIcon;
  final Widget? selectedIcon;
  final Widget? title;
  final Widget? content;
  final Color? contentBackgroundColor;
  final double contentRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? contentTextStyle;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? contentMargin;
  final double? width;
  final double? titleWidth;

  @override
  State<SfAccordion> createState() => _AccordionState();
}

class _AccordionState extends State<SfAccordion> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    Widget? titleText;
    TextStyle? titleStyle;
    if (widget.title != null) {
      titleStyle = widget.titleTextStyle ??
          SfacTextStyle.b3M16(color: SfacColor.grayScale100);
      titleText = AnimatedDefaultTextStyle(
        style: titleStyle,
        duration: kThemeChangeDuration,
        child: widget.title!,
      );
    }
    Widget? contentText;
    TextStyle? contentStyle;
    if (widget.content != null) {
      contentStyle = widget.contentTextStyle ??
          SfacTextStyle.b3R16(color: SfacColor.grayScale60);
      contentText = AnimatedDefaultTextStyle(
        style: contentStyle,
        duration: kThemeChangeDuration,
        child: widget.content!,
      );
    }

    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
                onTap: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                child: isVisible
                    ? widget.selectedIcon ?? widget.defaultIcon
                    : widget.defaultIcon),
            const SizedBox(width: 5),
            SizedBox(
                width: widget.titleWidth ??
                    MediaQuery.of(context).size.width * 0.85,
                child: titleText),
          ],
        ),
        isVisible
            ? Padding(
                padding: widget.contentPadding ??
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Container(
                  width: widget.width ?? MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:
                          widget.contentBackgroundColor ?? SfacColor.grayScale5,
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.contentRadius))),
                  child: Padding(
                      padding: widget.contentMargin ?? const EdgeInsets.all(15),
                      child: contentText),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
