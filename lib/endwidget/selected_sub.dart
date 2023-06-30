import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfSelectedSub extends StatefulWidget {
  const SfSelectedSub({
    super.key,
    required this.menu,
    this.width,
    required this.height,
    this.focusedColor,
    this.defaultColor,
    this.direction = Axis.vertical,
    this.onTap,
    this.margin,
    this.physics,
  });
  final List<String> menu;
  final double? width;
  final double height;
  final Color? focusedColor;
  final Color? defaultColor;
  final Axis direction;
  final Function(int)? onTap;
  final EdgeInsetsGeometry? margin;
  final ScrollPhysics? physics;

  @override
  State<SfSelectedSub> createState() => _SelectedSubState();
}

class _SelectedSubState extends State<SfSelectedSub> {
  int focusedChild = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
        physics: widget.physics ?? const NeverScrollableScrollPhysics(),
        scrollDirection: widget.direction,
        itemCount: widget.menu.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (widget.onTap != null) {
              widget.onTap!(index);
            }
            focusedChild = index;
            setState(() {});
          },
          child: Padding(
            padding: widget.margin ?? const EdgeInsets.all(8.0),
            child: Text(
              widget.menu[index],
              style: SfacTextStyle.b4R14(
                  color: focusedChild == index
                      ? widget.focusedColor ?? SfacColor.primary80
                      : widget.defaultColor ?? Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
