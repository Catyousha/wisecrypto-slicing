import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisecrypto_slicing/logic/user/user.dart';
import '../../../config/themes/themes.dart';
import '../../../widgets/widgets.dart';

class YourAssetsSection extends StatelessWidget {
  const YourAssetsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Aset Anda',
                style: AppText.textNormal.copyWith(
                  fontWeight: AppText.semiBold,
                )),
            Text('Lihat Semua',
                style: AppText.textNormal.copyWith(
                  fontWeight: AppText.semiBold,
                  color: AppColor.primary,
                )),
          ],
        ),
        const SizedBox(height: 8),
        BlocConsumer<UserCubit, UserState>(
          listener: (context, state) {
            if (state.status.isInitial) {
              context.read<UserCubit>().fetchUser();
            }
          },
          builder: (context, state) => HorizontalCarouselScroller(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: state.user.portfolios?.map((portfolio) {
                    return Row(
                      children: [
                        AssetsOverviewContainer(
                          amountKeep: portfolio.amount!,
                          coinImage: Image.asset(portfolio.coin!.imageSrc!),
                          coinName: portfolio.coin!.name!,
                          coinSymbol: portfolio.coin!.symbol!,
                          gain: portfolio.coin!.priceChange!,
                          portfolioValue: portfolio.portfolioValue,
                        ),
                        const SizedBox(width: 16),
                      ],
                    );
                  }).toList() ??
                  [],
            ),
          ),
        ),
      ],
    );
  }
}
