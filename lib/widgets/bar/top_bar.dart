import 'package:flutter/material.dart';
import 'package:wisecrypto_slicing/config/themes/themes.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({
    Key? key,
    required this.title,
    required this.leadingIcon,
    required this.leadingCallback,
    this.trailIcon,
    this.trailCallback,
  }) : super(key: key);

  final String title;
  final IconData leadingIcon;
  final VoidCallback leadingCallback;
  final IconData? trailIcon;
  final VoidCallback? trailCallback;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.white,
      title: Text(title,
          style: AppText.textMedium.copyWith(
            fontWeight: AppText.bold,
          )),
      leading: IconButton(
        icon: Icon(
          leadingIcon,
          color: AppColor.black,
          size: 24,
        ),
        onPressed: leadingCallback,
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
