import 'package:flutter/material.dart';

class Toast extends StatelessWidget {
  const Toast(
      {super.key,
      this.title,
      this.content,
      this.showelevatedButton,
      this.backgroundColor,
      this.outlineColor,
      this.toastDuration,
      this.toastShadow,
      this.toastBorderRadius = 10});
  final Widget? title;
  final Widget? content;
  final Widget? showelevatedButton;
  final Color? backgroundColor;
  final Color? outlineColor;
  final int? toastDuration;
  final double? toastShadow;
  final double toastBorderRadius;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
