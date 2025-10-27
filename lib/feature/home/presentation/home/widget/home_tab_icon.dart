import 'package:flutter/cupertino.dart';

class HomeTabIcon extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;

  const HomeTabIcon({super.key, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 40,
      child: Center(
          child: Icon(
            icon,
            color: iconColor,
          )),
    );
  }
}