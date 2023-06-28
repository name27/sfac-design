import 'package:flutter/material.dart';

class SelectedSub extends StatefulWidget {
  const SelectedSub(
      {super.key,
      required this.children,
      this.focusedChild,
      this.backgroundColor,
      this.focusedBackgroundColor});
  final List<Widget?> children;
  final Widget? focusedChild;
  final Color? backgroundColor;
  final Color? focusedBackgroundColor;

  @override
  State<SelectedSub> createState() => _SelectedSubState();
}

class _SelectedSubState extends State<SelectedSub> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
