import 'package:flutter/material.dart';

class SFIcon extends StatelessWidget {
  const SFIcon(
  this.iconName,
    {super.key,
  this.size
  });

  final String? iconName;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/$iconName.png',
      width: size,
      height: size,
      fit: BoxFit.cover,
    );
  }
}