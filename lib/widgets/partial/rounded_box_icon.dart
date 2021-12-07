import 'package:flutter/material.dart';

class RoundedBoxIcon extends StatelessWidget {
  const RoundedBoxIcon({
    Key? key,
    required this.backgroundColor,
    this.borderRadius = 10,
    this.height = 44,
    required this.icon,
    required this.iconColor,
    this.iconSize = 20,
    this.padding = 12,
    this.width = 44,
  }) : super(key: key);

  final Color backgroundColor;
  final double borderRadius;
  final double height;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final double padding;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
