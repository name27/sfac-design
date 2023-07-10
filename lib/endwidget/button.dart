import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfButton extends StatefulWidget {
  const SfButton({
    super.key,
    this.backgroundColor,
    this.textColor,
    this.outlineColor,
    required this.onPressed,
    this.disabledTextColor,
    this.disabledbackgroundColor,
    this.width,
    this.height = 50,
    this.outlineWidth = 1.0,
    this.outlineRadius = 10,
    this.hoverTextStyle,
    this.hoverbackgroundColor,
    this.isLink = false,
    required this.child,
  });
  final Widget? child;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? outlineColor;
  final void Function()? onPressed;
  final Color? disabledTextColor;
  final Color? disabledbackgroundColor;
  final double? width;
  final double? height;
  final double outlineWidth;
  final double outlineRadius;
  final TextStyle? hoverTextStyle;
  final Color? hoverbackgroundColor;
  final bool isLink;

  @override
  State<SfButton> createState() => _SfButtonState();
}

class _SfButtonState extends State<SfButton> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    Widget? childText;
    TextStyle? childStyle;
    if (widget.child != null) {
      childStyle = ishover && widget.isLink
          ? widget.hoverTextStyle ??
              TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 1.5,
                  fontFamily: 'PretendardBold',
                  fontSize: 16,
                  color: widget.onPressed == null
                      ? widget.disabledTextColor ?? SfacColor.grayScale20
                      : widget.textColor ?? SfacColor.primary60)
          : SfacTextStyle.b3B16(
              color: widget.onPressed == null
                  ? widget.disabledTextColor ?? SfacColor.grayScale20
                  : widget.textColor ?? SfacColor.primary60);
      childText = AnimatedDefaultTextStyle(
        style: childStyle,
        duration: kThemeChangeDuration,
        child: widget.child!,
      );
    }
    return InkWell(
      onTap: widget.onPressed,
      onHover: (value) {
        ishover = value;
        setState(() {});
      },
      borderRadius: BorderRadius.all(
        Radius.circular(widget.outlineRadius),
      ),
      hoverColor: widget.hoverbackgroundColor ?? Colors.transparent,
      child: Ink(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.isLink
              ? Colors.transparent
              : widget.onPressed == null
                  ? widget.disabledbackgroundColor ?? SfacColor.grayScale5
                  : widget.backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(widget.outlineRadius),
          border: Border.all(
            color: widget.outlineColor ?? Colors.transparent,
            width: widget.outlineWidth,
          ),
        ),
        child: Center(child: childText),
      ),
    );
  }
}
