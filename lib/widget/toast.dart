// // import 'package:flutter/material.dart';

// // class Toast extends StatefulWidget {
// //   const Toast(
// //       {super.key,
// //       this.title,
// //       this.content,
// //       this.showButton,
// //       this.backgroundColor,
// //       this.outlineColor,
// //       this.duration,
// //       this.shadow,
// //       this.borderRadius = 10,
// //       this.outlineWidth = 1.0});
// //   final Widget? title;
// //   final Widget? content;
// //   final Widget? showButton;
// //   final Color? backgroundColor;
// //   final Color? outlineColor;
// //   final Duration? duration;
// //   final double? shadow;
// //   final double borderRadius;
// //   final double outlineWidth;

// //   @override
// //   State<Toast> createState() => _ToastState();
// // }

// // class _ToastState extends State<Toast> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Placeholder();
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:widgets/endwidget/select_menu.dart';
// import 'package:widgets/util/sfac_color.dart';

// class SfToast extends StatefulWidget {
//   const SfToast({
//     super.key,
//     required this.selectMenu,
//     this.width,
//     required this.height,
//     this.backgroundColor,
//     this.focusedBackgroundColor,
//     this.outlineColor,
//     this.radius = 10,
//     this.outlineWidth,
//     this.direction = Axis.vertical,
//     this.onTap,
//     this.margin,
//     this.physics,
//     this.heightSpacing = 10,
//     this.focusedIndex = 0,
//     this.downDuration,
//   });
//   final List<SelectMenu?> selectMenu;
//   final double? width;
//   final double height;
//   final Color? backgroundColor;
//   final Color? focusedBackgroundColor;
//   final Color? outlineColor;
//   final double radius;
//   final double? outlineWidth;
//   final Axis direction;
//   final Function(int)? onTap;
//   final EdgeInsetsGeometry? margin;
//   final ScrollPhysics? physics;
//   final double heightSpacing;
//   final int focusedIndex;
//   final Duration? downDuration;

//   @override
//   State<SfToast> createState() => _ToastState();
// }

// class _ToastState extends State<SfToast>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: widget.downDuration ?? const Duration(milliseconds: 300),
//       vsync: this,
//     );

//     _animation = Tween<double>(
//       begin: 0.0,
//       end: widget.height,
//     ).animate(_controller);

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: _animation,
//         builder: (context, child) {
//           return SizedBox(
//             width: widget.width,
//             height: _animation.value,
//             child: ListView.builder(
//               padding: EdgeInsets.zero,
//               physics: widget.physics ?? const NeverScrollableScrollPhysics(),
//               scrollDirection: widget.direction,
//               itemCount: widget.selectMenu.length,
//               itemBuilder: (context, index) => Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       if (widget.onTap != null) {
//                         widget.onTap!(index);
//                       }
//                       setState(() {});
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                           border: Border.all(
//                               width: widget.outlineWidth ?? 0,
//                               color: widget.outlineColor ?? Colors.transparent),
//                           borderRadius: BorderRadius.circular(widget.radius)),
//                       child: Padding(
//                         padding: widget.margin ?? const EdgeInsets.all(8.0),
//                         child: widget.selectMenu[index],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: widget.heightSpacing),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }
import 'package:flutter/material.dart';

void showToast(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: Duration(seconds: 2), // 토스트 메시지가 표시되는 시간 설정
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}