import 'package:flutter/material.dart';

class ComboBox extends StatefulWidget {
  const ComboBox(
      {super.key,
      required this.children,
      this.margin = 5,
      this.outlineColor,
      this.borderRadius = 10,
      this.controller,
      this.dropDown,
      this.onchanged, this.outlineWidth = 1.0});
  final List<Widget?> children;
  final double margin;
  final Color? outlineColor;
  final double outlineWidth;
  final double borderRadius;
  final TextEditingController? controller;
  final Function? dropDown;
  final Function(String)? onchanged;

  @override
  State<ComboBox> createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
