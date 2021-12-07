import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:wisecrypto_slicing/config/routes/routes.dart';
import '../../../logic/logic.dart';
import '../../../config/themes/themes.dart';
import '../../../constants/constants.dart';

class NameHeaderSection extends StatelessWidget {
  const NameHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state.status.isInitial) {
          context.read<UserCubit>().fetchUser();
        }
      },
      builder: (context, state) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              state.user.profileImageSrc ?? ImageConstant.defaultProfilePic,
            ),
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
                Text(state.user.fullName ?? '-',
                    style: AppText.textSemiLarge.copyWith(
                      color: AppColor.black,
                      fontWeight: AppText.bold,
                    )),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.notification);
            },
            icon: const Icon(
              IconlyLight.notification,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
