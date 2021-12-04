import 'package:flutter/material.dart';
import '../../../config/themes/themes.dart';
import '../../../constants/constants.dart';

class GraphBgContainer extends StatelessWidget {
  const GraphBgContainer({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage(
                ImageConstant.graphBg,
              )),
            ),
          ),
        ),
        Padding(
          padding: padding,
          child: child,
        ),
      ],
    );
  }
}
