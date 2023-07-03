import 'package:flutter/material.dart';
import 'package:widgets/endwidget/card.dart';
import 'package:widgets/endwidget/select_main.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class ComboBox extends StatefulWidget {
  const ComboBox({
    super.key,
    required this.children,
    this.title,
    this.margin = 10,
    this.outlineColor,
    this.outlineWidth = 1.0,
    this.outlineRadius = 10,
    this.width,
    required this.height,
    this.trailingIcon,
    this.onTap,
  });
  final String? title;
  final List<Widget?> children;
  final double margin;
  final Color? outlineColor;
  final double outlineWidth;
  final double outlineRadius;
  final double? width;
  final double height;
  final Icon? trailingIcon;
  final Function(int)? onTap;

  @override
  State<ComboBox> createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              isTap = !isTap;
              setState(() {});
            },
            child: SfCard(
              outlineColor: widget.outlineColor,
              outlineWidth: widget.outlineWidth,
              outlineRadius: widget.outlineRadius,
              margin: widget.margin,
              width: widget.width,
              top: Text(
                widget.title ?? 'Select framework',
                style: SfacTextStyle.b3R16(color: SfacColor.grayScale40),
              ),
              right: widget.trailingIcon ?? const Icon(Icons.thumbs_up_down),
            ),
          ),
          isTap
              ? SfCard(
                  outlineColor: widget.outlineColor,
                  outlineWidth: widget.outlineWidth,
                  outlineRadius: widget.outlineRadius,
                  margin: widget.margin,
                  top: SfSelectedMain(
                      onTap: (index) {
                        if (widget.onTap != null) {
                          widget.onTap!(index);
                        }
                      },
                      heightSpacing: 10,
                      direction: Axis.vertical,
                      height: widget.height,
                      children: widget.children))
              : const SizedBox()
        ],
      ),
    );
  }
}
