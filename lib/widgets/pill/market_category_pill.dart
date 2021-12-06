import 'package:flutter/material.dart';
import '../../config/themes/themes.dart';

class MarketCategoryPill extends StatelessWidget {
  const MarketCategoryPill({
    Key? key,
    required this.label,
    this.isSelected = false,
  }) : super(key: key);

  final bool isSelected;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: (isSelected) ? AppColor.primary : AppColor.white,
        border: Border.all(
          color: AppColor.primary,
          width: (isSelected) ? 0 : 1.0,
        ),
      ),
      child: Text(label,
          style: AppText.textSmall.copyWith(
            fontWeight: AppText.bold,
            color: (isSelected) ? AppColor.white : AppColor.primary,
          )),
    );
  }
}
