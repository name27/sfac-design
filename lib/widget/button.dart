import 'dart:ffi';

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button(
      {super.key,
      this.child,
      this.backgroundColor,
      this.outlineColor,
      this.enabled = true,
      this.onPress,
      this.changeChild,
      this.changeBackgroundColor,
      this.changeOutlineColor,
      this.width,
      this.height});
  final Widget? child;
  final Color? backgroundColor;
  final Color? outlineColor;
  final bool enabled;
  final Function? onPress;
  final Widget? changeChild;
  final Color? changeBackgroundColor;
  final Color? changeOutlineColor;
  final Double? width;
  final Double? height;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
