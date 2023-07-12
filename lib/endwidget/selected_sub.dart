import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SFSelectedSub extends StatefulWidget {
  const SFSelectedSub({
    super.key,
    required this.selectMenu,
    this.width,
    required this.height,
    this.focusedColor,
    this.defaultColor,
    this.direction = Axis.vertical,
    this.onTap,
    this.margin,
    this.physics,
  });
  final List<String> selectMenu;
  final double? width;
  final double height;
  final Color? focusedColor;
  final Color? defaultColor;
  final Axis direction;
  final Function(int)? onTap;
  final EdgeInsetsGeometry? margin;
  final ScrollPhysics? physics;

  @override
  State<SFSelectedSub> createState() => _SelectedSubState();
}

class _SelectedSubState extends State<SFSelectedSub> {
  int focusedChild = 0;
  List<bool> ishover = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ishover = List.generate(widget.selectMenu.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
        physics: widget.physics ?? const NeverScrollableScrollPhysics(),
        scrollDirection: widget.direction,      
        itemCount: widget.selectMenu.length,
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
          onHover: (value) {
            ishover[index] = value;
            setState(() {});
          },
          hoverColor: Colors.transparent,
          child: Padding(
            padding: widget.margin ?? const EdgeInsets.all(8.0),
            child: Text(
              widget.selectMenu[index],
              style: SfacTextStyle.b4R14(
                  color: ishover[index]
                      ? widget.focusedColor ?? SfacColor.primary80
                      : focusedChild == index
                          ? widget.focusedColor ?? SfacColor.primary80
                          : widget.defaultColor ?? Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
