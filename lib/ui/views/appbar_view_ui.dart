import 'package:flutter/material.dart';

class AppbarViewUi extends StatelessWidget implements PreferredSizeWidget {
  double width;
  double height;
  Widget child;

  AppbarViewUi({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Size get preferredSize => Size(width, height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: child,
        ),
      ),
    );
  }
}
