import 'package:flutter/material.dart';

class Tab extends StatefulWidget {
  const Tab(
      {super.key,
      this.child,
      this.focusedChild,
      this.focusedColor,
      this.width,
      this.height});
  final Widget? child;
  final Widget? focusedChild;
  final Color? focusedColor;
  final double? width;
  final double? height;

  @override
  State<Tab> createState() => _TabState();
}

class _TabState extends State<Tab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
