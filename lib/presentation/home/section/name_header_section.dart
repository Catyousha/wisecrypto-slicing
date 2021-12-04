import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../config/themes/themes.dart';
import '../../../constants/constants.dart';

class NameHeaderSection extends StatelessWidget {
  const NameHeaderSection({
    Key? key,
    required this.fullName,
    required this.profilePicture,
  }) : super(key: key);

  final ImageProvider profilePicture;
  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: profilePicture,
          radius: 40,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Halo,",
                  style: AppText.textSmall.copyWith(
                    color: AppColor.gray2,
                    fontWeight: AppText.semiBold,
                  )),
              Text(fullName,
                  style: AppText.textSemiLarge.copyWith(
                    color: AppColor.black,
                    fontWeight: AppText.bold,
                  )),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyLight.notification,
            size: 20,
          ),
        ),
      ],
    );
  }
}
