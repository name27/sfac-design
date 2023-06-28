import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField(
      {super.key,
      this.hintText,
      this.trailing,
      this.onfocused,
      this.borderRadius = 10,
      this.outlineColor,
      this.backgroundColor,
      this.focusedOutlineColor,
      this.focusedBackgroundColor,
      this.focusedTrailing,
      this.controller,
      this.onchanged,
      this.onSubmitted,
      this.outlineWidth = 1.0});
  final Widget? hintText;
  final Widget? trailing;
  final bool? onfocused;
  final double borderRadius;
  final Color? outlineColor;
  final Color? backgroundColor;
  final Color? focusedOutlineColor;
  final Color? focusedBackgroundColor;
  final Widget? focusedTrailing;
  final TextEditingController? controller;
  final Function(String)? onchanged;
  final Function(String)? onSubmitted;
  final double outlineWidth;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return const TextField();
  }
}
