import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import '../../../constants/constants.dart';
import '../../../config/themes/themes.dart';
import '../../../logic/logic.dart';

class ProfileHeaderIdentitySection extends StatelessWidget {
  const ProfileHeaderIdentitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state.status.isInitial) {
          context.read<UserCubit>().fetchUser();
        }
      },
      builder: (context, state) => Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    state.user.profileImageSrc ??
                        ImageConstant.defaultProfilePic,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppColor.primary,
                        border: Border.all(
                          color: AppColor.light,
                        )),
                    child: const Icon(
                      IconlyLight.edit,
                      color: AppColor.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(state.user.fullName ?? '-',
                style: AppText.textLarge.copyWith(
                  fontWeight: AppText.bold,
                )),
          ],
        ),
      ),
    );
  }
}
