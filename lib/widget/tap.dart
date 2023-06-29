import 'package:flutter/material.dart';

class Tab extends StatefulWidget {
  const Tab(
      {super.key,
      required this.children,
      required this.screen,
      this.focusedChild,
      this.focusedColor,
      this.width,
      this.height,
      this.outlineWidth = 1.0});
  final List<Widget?> children;
  final List<Widget?> screen;
  final Widget? focusedChild;
  final Color? focusedColor;
  final double? width;
  final double? height;
  final double outlineWidth;

  @override
  State<Tab> createState() => _TabState();
}

class _TabState extends State<Tab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
