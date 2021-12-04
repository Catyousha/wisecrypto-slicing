import 'package:flutter/material.dart';
import '../../config/themes/themes.dart';

class RoundedBoxImage extends StatelessWidget {
  const RoundedBoxImage({
    Key? key,
    this.padding,
    required this.child,
    this.height,
    this.width,
  }) : super(key: key);

  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final Image child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.light,
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
