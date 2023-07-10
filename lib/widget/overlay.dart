// import 'package:flutter/material.dart';
// import 'package:widgets/endwidget/card.dart';
// import 'dart:async';

// class SfToast extends StatefulWidget {
//   const SfToast({super.key, required this.entry, this.decoration});
//   final SfCard? decoration;
//   final OverlayEntry entry;

//   @override
//   State<SfToast> createState() => _SfToastState();
// }

// class _SfToastState extends State<SfToast> with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animation;
//   OverlayEntry? _overlayEntry;

//   void createOverlayEntry() {
//     _overlayEntry = OverlayEntry(builder: (context) {
//       return AnimatedBuilder(
//         animation: _animation,
//         builder: (context, child) => Positioned(
//           top: MediaQuery.of(context).size.height * 0.1, // 토스트의 위치 조정
//           left: 0,
//           right: 0,
//           child: Opacity(
//             opacity: _animation.value,
//             child: Material(
//               color: Colors.transparent,
//               child:
//                   Align(alignment: Alignment.center, child: widget.decoration),
//             ),
//           ),
//         ),
//       );
//     });
//   }

//   void showDropdown() {
//     Overlay.of(context).insert(_overlayEntry!);
//   }

//   void hideDropdown() {
//     _overlayEntry?.remove();
//     _overlayEntry = null;
//   }

//   void toggleDropdown() {
//     if (_overlayEntry == null) {
//       createOverlayEntry();
//       showDropdown();
//     } else {
//       hideDropdown();
//     }
//   }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _animationController = AnimationController(
//   //     duration: const Duration(milliseconds: 1500),
//   //     vsync: this,
//   //   );
//   //   _animation = CurvedAnimation(
//   //     parent: _animationController,
//   //     curve: Curves.ease,
//   //   );
//   //   _animationController.forward();
//   //   Timer(const Duration(seconds: 2), () {
//   //     hideToast();
//   //   });
//   // }

//   // @override
//   // void dispose() {
//   //   _animationController.dispose();
//   //   super.dispose();
//   // }

//   // void hideToast() {
//   //   _animationController.reverse().then((_) {
//   //     widget.entry.remove();
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animation,
//       builder: (context, child) => Positioned(
//         top: MediaQuery.of(context).size.height * 0.1, // 토스트의 위치 조정
//         left: 0,
//         right: 0,
//         child: Opacity(
//           opacity: _animation.value,
//           child: Material(
//             color: Colors.transparent,
//             child: Align(alignment: Alignment.center, child: widget.decoration),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:widgets/endwidget/card.dart';
import 'dart:async';


class ToastOverlay {
  static void show(BuildContext context, Widget child) {
    final overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height * 0.1,
        left: 0,
        right: 0,
        child: Material(
          color: Colors.transparent,
          child: child,
        ),
      ),
    );

    overlayState.insert(overlayEntry);
    Timer(const Duration(seconds: 2), () {
      overlayEntry!.remove();
    });
  }
}

class SfToast extends StatefulWidget {
  const SfToast({super.key, required this.entry, this.decoration});
  final SfCard? decoration;
  final OverlayEntry entry;

  @override
  State<SfToast> createState() => _SfToastState();
}

class _SfToastState extends State<SfToast> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
    );
    _animationController.forward();
    Timer(const Duration(seconds: 2), () {
      hideToast();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void hideToast() {
    _animationController.reverse().then((_) {
      widget.entry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) => Positioned(
        top: MediaQuery.of(context).size.height * 0.1, // 토스트의 위치 조정
        left: 0,
        right: 0,
        child: Opacity(
          opacity: _animation.value,
          child: Material(
            color: Colors.transparent,
            child: Align(alignment: Alignment.center, child: widget.decoration),
          ),
        ),
      ),
    );
  }
}