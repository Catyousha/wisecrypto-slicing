import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../config/themes/themes.dart';

class GainPill extends StatelessWidget {
  const GainPill({
    Key? key,
    required this.gain,
  }) : super(key: key);
  final double gain;

  bool get isPositive => gain >= 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: (isPositive) ? AppColor.primary : AppColor.danger,
      ),
      child: Row(
        children: <Widget>[
          Transform.rotate(
            angle: pi / 4,
            child: Icon(
              (isPositive) ? IconlyLight.arrow_up : IconlyLight.arrow_down,
              color: AppColor.white,
              size: 14,
            ),
          ),
          const SizedBox(width: 2),
          Text('${gain.toStringAsFixed(2)}%',
              style: AppText.textExtraSmall.copyWith(
                color: AppColor.white,
                fontWeight: AppText.bold,
              )),
        ],
      ),
    );
  }
}
