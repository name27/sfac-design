import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfNavigationMenu extends StatefulWidget {
  const SfNavigationMenu({
    super.key,
    required this.menu,
    this.width,
    required this.height,
    this.backgroundColor,
    this.focusedBackgroundColor,
    this.defaultMenuColor,
    this.focusedMenuColor,
    this.outlineColor,
    this.radius = 10,
    this.outlineWidth,
    this.direction = Axis.horizontal,
    this.onTap,
    this.margin,
    this.physics,
  });
  final List<String> menu;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final Color? focusedBackgroundColor;
  final Color? defaultMenuColor;
  final Color? focusedMenuColor;
  final Color? outlineColor;
  final double radius;
  final double? outlineWidth;
  final Axis direction;
  final Function(int)? onTap;
  final EdgeInsetsGeometry? margin;
  final ScrollPhysics? physics;

  @override
  State<SfNavigationMenu> createState() => _SfNavigationMenu();
}

class _SfNavigationMenu extends State<SfNavigationMenu> {
  int focusedChild = 0;
  List<bool> ishover = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ishover = List.generate(widget.menu.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
        physics: widget.physics ?? const NeverScrollableScrollPhysics(),
        scrollDirection: widget.direction,
        itemCount: widget.menu.length,
        itemBuilder: (context, index) => InkWell(
          splashColor: Colors.transparent, // 클릭할 때 나오는 효과 색상
          highlightColor: Colors.transparent, // 클릭 유지 시 나오는 효과 색상
          onTap: () {
            if (widget.onTap != null) {
              widget.onTap!(index);
            }
            focusedChild = index;
            setState(() {});
          },
          hoverColor: widget.focusedBackgroundColor ?? SfacColor.primary5,
          onHover: (value) {
            ishover[index] = value;
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
                color: focusedChild == index
                    ? widget.focusedBackgroundColor ?? SfacColor.primary5
                    : widget.backgroundColor,
                border: Border.all(
                    width: widget.outlineWidth ?? 0,
                    color: widget.outlineColor ?? Colors.transparent),
                borderRadius: BorderRadius.circular(widget.radius)),
            child: Padding(
              padding: widget.margin ?? const EdgeInsets.all(12.0),
              child: Text(
                widget.menu[index],
                style: SfacTextStyle.b3M16(
                    color: ishover[index]
                        ? widget.focusedMenuColor ?? SfacColor.primary80
                        : focusedChild == index
                            ? widget.focusedMenuColor ?? SfacColor.primary80
                            : widget.defaultMenuColor ?? Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
