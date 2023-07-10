import 'package:flutter/material.dart';
import 'package:widgets/endwidget/card.dart';
import 'package:widgets/endwidget/select_main.dart';
import 'package:widgets/endwidget/select_menu.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/util/sfac_text_style.dart';
import 'package:widgets/widget/icon.dart';

class ComboBox extends StatefulWidget {
  const ComboBox({
    super.key,
    required this.selectMenu,
    this.title,
    this.margin = 10,
    this.outlineColor,
    this.outlineWidth = 1.0,
    this.outlineRadius = 10,
    this.width,
    required this.height,
    this.trailingIcon,
    this.onTap,
    this.boxScorllPhysics,
  });
  final String? title;
  final List<SelectMenu?> selectMenu;
  final double margin;
  final Color? outlineColor;
  final double outlineWidth;
  final double outlineRadius;
  final double? width;
  final double height;
  final Icon? trailingIcon;
  final Function(int)? onTap;
  final ScrollPhysics? boxScorllPhysics;

  @override
  State<ComboBox> createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  bool isTap = false;
  String title = '';
  Widget? icon;
  int focusedIndex = 0;

  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  Size? size;
  final GlobalKey _buttonKey = GlobalKey();

  void createOverlayEntry() {
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        width: widget.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          offset: Offset(0, size!.height),
          child: Container(
            width: widget.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(widget.outlineRadius),
              border: Border.all(
                color: widget.outlineColor ?? SfacColor.grayScale20,
                width: widget.outlineWidth,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(widget.margin),
              child: SfSelectedMain(
                downDuration: const Duration(milliseconds: 300),
                heightSpacing: 10,
                direction: Axis.vertical,
                height: widget.height,
                selectMenu: widget.selectMenu,
                focusedIndex: focusedIndex,
                physics: widget.boxScorllPhysics,
                onTap: (index) {
                  if (widget.onTap != null) {
                    widget.onTap!(index);
                  }
                  title = widget.selectMenu[index]!.text;
                  icon = widget.selectMenu[index]?.icon;
                  focusedIndex = index;
                  if (_overlayEntry != null) {
                    hideDropdown();
                  }
                  setState(() {});
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showDropdown() {
    Overlay.of(context).insert(_overlayEntry!);
  }

  void hideDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void toggleDropdown() {
    if (_overlayEntry == null) {
      createOverlayEntry();
      showDropdown();
    } else {
      hideDropdown();
    }
  }

  Size? _getSize() {
    if (_buttonKey.currentContext != null) {
      final RenderBox renderBox =
          _buttonKey.currentContext!.findRenderObject() as RenderBox;
      Size size = renderBox.size;
      return size;
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        size = _getSize();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: CompositedTransformTarget(
        link: _layerLink,
        child: GestureDetector(
            key: _buttonKey,
            onTap: toggleDropdown,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(widget.outlineRadius),
                border: Border.all(
                  color: widget.outlineColor ?? SfacColor.grayScale20,
                  width: widget.outlineWidth,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(widget.margin),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: title != ''
                          ? SelectMenu(
                              icon: icon,
                              text: title,
                            )
                          : Text(
                              widget.title ?? 'Select framework',
                              style: SfacTextStyle.b3R16(
                                  color: SfacColor.grayScale40),
                            ),
                    ),
                    widget.trailingIcon ?? const SFIcon(SfacIcon.coverbox),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
