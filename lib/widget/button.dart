import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';

class Button extends StatefulWidget {
  const Button(
      {super.key,
      required this.child,
      this.backgroundColor,
      this.outlineColor,
      this.enabled = true,
      required this.onPressed,
      this.disabledForegroundColor,
      this.disabledBackgroundColor,
      this.disabledOutlineColor,
      this.width,
      this.height,
      this.outlineWidth = 1.0,
      this.radius = 10});
  final Widget? child;
  final Color? backgroundColor;
  final Color? outlineColor;
  final bool enabled;
  final void Function()? onPressed;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final Color? disabledOutlineColor;
  final Double? width;
  final Double? height;
  final double outlineWidth;
  final double radius;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: widget.backgroundColor ?? SfacColor.primary80,
          disabledBackgroundColor:
              widget.disabledBackgroundColor ?? SfacColor.grayScale5,
          disabledForegroundColor:
              widget.disabledForegroundColor ?? SfacColor.grayScale20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius),
          )),
      child: widget.child,
    );
  }
}
