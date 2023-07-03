import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfBreadcrumb extends StatelessWidget {
  const SfBreadcrumb(
      {super.key,
      required this.menu,
      this.middleIcon,
      this.width,
      required this.height,
      this.physics});
  final List<String> menu;
  final Widget? middleIcon;
  final double? width;
  final double height;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ListView.builder(
        physics: physics ?? const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: menu.length,
        itemBuilder: (context, index) => Row(
          children: [
            Text(
              menu[index],
              style: SfacTextStyle.b2M18(color: SfacColor.grayScale80),
            ),
            index ==  menu.length -1
                ? const SizedBox()
                : middleIcon ??
                    const Icon(
                      Icons.play_arrow,
                      color: SfacColor.grayScale40,
                      size: 15,
                    ),
          ],
        ),
      ),
    );
  }
}
