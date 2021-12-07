import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../widgets.dart';
import '../../config/themes/themes.dart';

class OverviewDetailTile extends StatelessWidget {
  const OverviewDetailTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.iconBackgroundColor = AppColor.gray2,
    this.icon = IconlyBold.notification,
    this.iconColor = AppColor.gray,
  }) : super(key: key);

  final IconData icon;
  final Color iconBackgroundColor;
  final Color iconColor;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundedBoxIcon(
            backgroundColor: iconBackgroundColor,
            icon: icon,
            iconColor: iconColor,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,
                    style: AppText.textMedium.copyWith(
                      fontWeight: AppText.bold,
                    )),
                const SizedBox(height: 2),
                Text(subtitle, style: AppText.textSmall),
              ],
            ),
          ),
          const Icon(
            IconlyLight.arrow_right_2,
            color: AppColor.gray2,
            size: 24,
          ),
        ],
      ),
    );
  }
}
