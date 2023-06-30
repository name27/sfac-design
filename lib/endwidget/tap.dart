import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfTab extends StatefulWidget {
  const SfTab(
      {super.key,
      required this.menu,
      this.focusedColor,
      this.width,
      required this.height,
      this.backgroundColor,
      this.borderColor,
      this.borderTop,
      this.borderBottom,
      this.borderLeft,
      this.borderRigt,
      this.borderWidth = 4.0,
      this.onTap,
      this.physics});
  final List<Widget?> menu;
  final Color? focusedColor;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final Color? borderColor;
  final BorderSide? borderTop;
  final BorderSide? borderBottom;
  final BorderSide? borderLeft;
  final BorderSide? borderRigt;
  final double borderWidth;
  final Function(int)? onTap;
  final ScrollPhysics? physics;

  @override
  State<SfTab> createState() => _TabState();
}

class _TabState extends State<SfTab> {
  int focusedText = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
          physics: widget.physics ?? const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: widget.menu.length,
          itemBuilder: (context, index) {
            Widget? menuText;
            TextStyle? menuStyle;
            menuStyle = SfacTextStyle.b3M16(
                color: focusedText == index
                    ? widget.focusedColor ?? SfacColor.primary100
                    : Colors.black);
            menuText = AnimatedDefaultTextStyle(
              style: menuStyle,
              duration: kThemeChangeDuration,
              child: widget.menu[index]!,
            );
            return GestureDetector(
              onTap: () {
                if (widget.onTap != null) {
                  widget.onTap!(index);
                }
                focusedText = index;
                setState(() {});
              },
              child: Container(
                width: widget.width != null
                    ? widget.width! / widget.menu.length
                    : MediaQuery.of(context).size.width / widget.menu.length,
                decoration: BoxDecoration(
                    color: widget.backgroundColor,
                    border: Border(
                      top: widget.borderTop ?? BorderSide.none,
                      bottom: focusedText == index
                          ? widget.borderBottom ??
                              BorderSide(
                                  color: widget.borderColor ??
                                      SfacColor.primary100,
                                  width: widget.borderWidth)
                          : BorderSide.none,
                      left: widget.borderLeft ?? BorderSide.none,
                      right: widget.borderRigt ?? BorderSide.none,
                    )),
                child: Center(child: menuText),
              ),
            );
          }),
    );
  }
}
