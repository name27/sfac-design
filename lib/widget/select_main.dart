import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';

class SelectedMain extends StatefulWidget {
  const SelectedMain({
    super.key,
    required this.children,
    this.width,
    required this.height,
    this.backgroundColor,
    this.focusedBackgroundColor,
    this.outlineColor,
    this.radius = 10,
    this.outlineWidth,
    this.direction = Axis.vertical,
    this.onTap,
  });
  final List<Widget> children;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final Color? focusedBackgroundColor;
  final Color? outlineColor;
  final double radius;
  final double? outlineWidth;
  final Axis direction;
  final Function(int)? onTap;

  @override
  State<SelectedMain> createState() => _SelectedMainState();
}

class _SelectedMainState extends State<SelectedMain> {
  int focusedChild = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
        scrollDirection: widget.direction,
        itemCount: widget.children.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (widget.onTap != null) {
              widget.onTap!(index);
            }
            focusedChild = index;
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
                color: focusedChild == index
                    ? SfacColor.primary5
                    : widget.backgroundColor,
                border: Border.all(
                    width: widget.outlineWidth ?? 0,
                    color: widget.outlineColor ?? Colors.transparent),
                borderRadius: BorderRadius.circular(widget.radius)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget.children[index],
            ),
          ),
        ),
      ),
    );
  }
}
