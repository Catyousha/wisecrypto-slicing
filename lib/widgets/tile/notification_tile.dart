import 'package:flutter/material.dart';
import '../partial/partial.dart';
import '../../config/themes/themes.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key? key,
    required this.dateDescription,
    required this.message,
    required this.title,
    this.icon = Icons.notifications,
    this.iconBackgroundColor = AppColor.gray,
    this.iconColor = AppColor.gray2,
  }) : super(key: key);

  final String dateDescription;
  final IconData icon;
  final Color iconBackgroundColor;
  final Color iconColor;
  final String message;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RoundedBoxIcon(
            backgroundColor: iconBackgroundColor,
            iconColor: iconColor,
            icon: icon,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,
                    style: AppText.textMedium.copyWith(
                      fontWeight: AppText.bold,
                    )),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: AppText.textSmall,
                ),
                const SizedBox(height: 4),
                Text(dateDescription,
                    style: AppText.textSmall.copyWith(
                      color: AppColor.gray2,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
