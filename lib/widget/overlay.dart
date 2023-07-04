// import 'package:flutter/material.dart';
// import 'package:widgets/endwidget/card.dart';
// import 'package:widgets/endwidget/select_main.dart';
// import 'package:widgets/endwidget/select_menu.dart';
// import 'package:widgets/util/sfac_icon.dart';
// import 'package:widgets/widget/icon.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   OverlayEntry? _overlayEntry;
//   final LayerLink _layerLink = LayerLink();
//   final double width = 250;
//   Size? size;
//   final GlobalKey _buttonKey = GlobalKey();

//   void createOverlayEntry() {
//     _overlayEntry = OverlayEntry(
//       builder: (context) => Positioned(
//         width: width,
//         child: CompositedTransformFollower(
//           link: _layerLink,
//           offset: Offset(0, size!.height),
//           child: SfCard(
//               width: width,
//               top: SfSelectedMain(
//                   width: width,
//                   height: 250,
//                   physics: BouncingScrollPhysics(),
//                   heightSpacing: 10,
//                   direction: Axis.vertical,
//                   onTap: (index) {
//                     print(index);
//                   },
//                   children: const [
//                     SelectMenu(icon: SFIcon(SfacIcon.dart), text: '커뮤니티 전체'),
//                     SelectMenu(icon: SFIcon(SfacIcon.laptop), text: '웹개발'),
//                     SelectMenu(icon: SFIcon(SfacIcon.phone), text: '앱개발'),
//                     SelectMenu(icon: SFIcon(SfacIcon.graph), text: 'BigData'),
//                     SelectMenu(icon: SFIcon(SfacIcon.palette), text: 'UI/UX'),
//                     SelectMenu(icon: SFIcon(SfacIcon.lock), text: '해킹/보안'),
//                     SelectMenu(icon: SFIcon(SfacIcon.robot), text: 'AI'),
//                     SelectMenu(icon: SFIcon(SfacIcon.gamepad), text: '게임개발')
//                   ])),
//         ),
//       ),
//     );
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

//   Size? _getSize() {
//     if (_buttonKey.currentContext != null) {
//       final RenderBox renderBox =
//           _buttonKey.currentContext!.findRenderObject() as RenderBox;
//       Size size = renderBox.size;
//       return size;
//     }
//     return null;
//   }

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setState(() {
//         size = _getSize();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text('dropdown test'),
//       ),
//       body: Center(
//         child: CompositedTransformTarget(
//           link: _layerLink,
//           child: ElevatedButton(
//             key: _buttonKey,
//             onPressed: toggleDropdown,
//             child: const Text('Toggle Dropdown'),
//           ),
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
