import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfButton extends StatefulWidget {
  const SfButton({
    super.key,
    required this.child,
    this.backgroundColor,
    this.foregroundColor,
    this.outlineColor,
    required this.onPressed,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.width,
    this.height = 50,
    this.outlineWidth = 1.0,
    this.radius = 10,
    this.hoverTextStyle,
    this.hoverBackgroundColor,
    this.ishover = false,
  });
  final Widget? child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? outlineColor;
  final void Function()? onPressed;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final double? width;
  final double? height;
  final double outlineWidth;
  final double radius;
  final TextStyle? hoverTextStyle;
  final Color? hoverBackgroundColor;
  final bool ishover;

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
      childStyle = ishover
          ? widget.hoverTextStyle ??
              TextStyle(
                  decoration: TextDecoration.underline, decorationThickness: 1.5,
                  fontFamily: 'PretendardBold',
                  fontSize: 16,
                  color: widget.onPressed == null
                      ? widget.disabledForegroundColor ?? SfacColor.grayScale20
                      : widget.foregroundColor ?? Colors.white)
          : SfacTextStyle.b3B16(
              color: widget.onPressed == null
                  ? widget.disabledForegroundColor ?? SfacColor.grayScale20
                  : widget.foregroundColor ?? Colors.white);
      childText = AnimatedDefaultTextStyle(
        style: childStyle,
        duration: kThemeChangeDuration,
        child: widget.child!,
      );
    }
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height,
      child: ElevatedButton(
       onPressed: widget.onPressed,
      //  onPressed: () {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //                     SnackBar(content: Text("My amazing message! O.o")));
      //  },
        onHover: widget.ishover
            ? (value) {
                ishover = value;
                setState(() {});
              }
            : null,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ishover
              ? widget.hoverBackgroundColor ?? SfacColor.primary5
              : widget.backgroundColor ?? SfacColor.primary80,
          foregroundColor: widget.foregroundColor,
          disabledBackgroundColor:
              widget.disabledBackgroundColor ?? SfacColor.grayScale5,
          disabledForegroundColor:
              widget.disabledForegroundColor ?? SfacColor.grayScale20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius),
          ),
          side: BorderSide(
            color: widget.outlineColor ?? SfacColor.grayScale5,
            width: widget.outlineWidth,
          ),
        ),
        child: childText,
      ),
    );
  }
}
