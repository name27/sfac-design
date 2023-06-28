import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class Accordion extends StatefulWidget {
  const Accordion({
    super.key,
    required this.defaultIcon,
    this.selectedIcon,
    this.title,
    this.content,
    this.contentBackgroundColor = SfacColor.grayScale5,
    this.contentRadius = 10,
    this.titleTextStyle,
    this.contentTextStyle,
    this.contentPaddingvertical = 5,
    this.contentPaddingHorizontal = 10,
    this.contentMargin = 15,
    this.width,
  });
  final Widget defaultIcon;
  final Widget? selectedIcon;
  final Widget? title;
  final Widget? content;
  final Color contentBackgroundColor;
  final double contentRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? contentTextStyle;
  final double contentPaddingvertical;
  final double contentPaddingHorizontal;
  final double contentMargin;
  final double? width;

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
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
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    isVisible = !isVisible;
                    setState(() {});
                  },
                  child: isVisible
                      ? widget.selectedIcon ?? widget.defaultIcon
                      : widget.defaultIcon),
              const SizedBox(width: 10),
              SizedBox(
                  width: widget.width ?? MediaQuery.of(context).size.width * 0.88,
                  child: titleText),
            ],
          ),
        ),
        isVisible
            ? Padding(
                padding: EdgeInsets.symmetric(
                    vertical: widget.contentPaddingvertical,
                    horizontal: widget.contentPaddingHorizontal),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: widget.contentBackgroundColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.contentRadius))),
                  child: Padding(
                      padding: EdgeInsets.all(widget.contentMargin),
                      child: contentText),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
