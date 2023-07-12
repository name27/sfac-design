import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SFAvatar extends StatelessWidget {
  const SFAvatar({
    super.key,
    this.child,
    this.radius,
    this.borderWidth = 0.5,
    this.padding = 0,
    this.size = 42,
    this.backgroundColor,
    this.borderColor,
  });
  final Widget? child;
  final double? radius;
  final double borderWidth;
  final double padding;
  final double? size;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey,
        borderRadius: BorderRadius.circular(999),
        border:
            Border.all(width: borderWidth, color: borderColor ?? Colors.grey),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(radius ?? 999),
          child: child ?? SvgPicture.asset('assets/svg/logo.svg')),
    );
  }
}
