import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu(
      {super.key,
      required this.menu,
      this.selectedMenu,
      this.selectedBackgroundColor});
  final List<Widget?> menu;
  final Widget? selectedMenu;
  final Color? selectedBackgroundColor;

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
