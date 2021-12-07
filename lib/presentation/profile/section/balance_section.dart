import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:wisecrypto_slicing/config/themes/themes.dart';
import 'package:wisecrypto_slicing/logic/logic.dart';
import 'package:wisecrypto_slicing/utils/app_utils.dart';
import '../../../widgets/widgets.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({Key? key}) : super(key: key);

  Widget _buildIconText({
    required IconData icon,
    required String text,
  }) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: AppColor.primary,
          size: 24,
        ),
        Text(text,
            style: AppText.textNormal.copyWith(
              color: AppColor.primary,
              fontWeight: AppText.semiBold,
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        GraphBgContainer(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 40,
            left: 18,
            right: 18,
          ),
          child: BlocConsumer<UserCubit, UserState>(
            listener: (context, state) {
              if (state.status.isInitial) {
                context.read<UserCubit>().fetchUser();
              }
            },
            builder: (context, state) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Saldo Saat Ini',
                        style: AppText.textMedium.copyWith(
                          color: AppColor.white,
                        )),
                    const SizedBox(height: 4),
                    Text(
                        '= ${AppUtils.formatCurrencyID.format(state.user.balance)}',
                        style: AppText.textMedium.copyWith(
                          color: AppColor.white,
                          fontWeight: AppText.bold,
                        )),
                  ],
                ),
                Text(
                    AppUtils.formatCurrencyEN
                        .format(state.user.balanceToDollar),
                    style: AppText.textExtraLarge.copyWith(
                      color: AppColor.white,
                      fontWeight: AppText.bold,
                    )),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -40,
          child: Container(
            width: 265,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildIconText(icon: IconlyBold.download, text: "Tarik"),
                Container(
                  color: AppColor.primary,
                  height: 35,
                  width: 1,
                ),
                _buildIconText(icon: IconlyBold.plus, text: "Tambah"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
