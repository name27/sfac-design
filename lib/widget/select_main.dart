import 'package:flutter/material.dart';

class selectedMain extends StatefulWidget {
  const selectedMain(
      {super.key,
      required this.children,
      this.focusedChild,
      this.backgroundColor,
      this.focusedBackgroundColor,
      this.borderRadius = 10,
      this.outlineWidth = 1.0});
  final List<Widget?> children;
  final Widget? focusedChild;
  final Color? backgroundColor;
  final Color? focusedBackgroundColor;
  final double borderRadius;
  final double outlineWidth;

  @override
  State<selectedMain> createState() => _selectedMainState();
}

class _selectedMainState extends State<selectedMain> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
