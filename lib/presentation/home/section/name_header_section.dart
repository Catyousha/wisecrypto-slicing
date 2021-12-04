import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../config/themes/themes.dart';
import '../../../constants/constants.dart';

class NameHeaderSection extends StatelessWidget {
  const NameHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const CircleAvatar(
          backgroundImage: AssetImage(DummyUser.profilePicture),
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
              Text(DummyUser.name,
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
