import 'package:flutter/material.dart';

class Keyword extends StatelessWidget {
  const Keyword(
      {super.key,
      required this.keyword,
      this.borderRadius = 10,
      this.spacing = 5,
      this.backgroundColor,
      this.outlineColor});
  final List<Widget?> keyword;
  final double spacing;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? outlineColor;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
