import 'package:flutter/material.dart';

class SfacIconWidget extends StatelessWidget {
  const SfacIconWidget(
      this.iconName,
    {
      super.key,
    this.width = 24.0,
    this.height = 24.0
    });
    
  final String iconName;
  final double width;
  final double height;


  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/$iconName.png',
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}