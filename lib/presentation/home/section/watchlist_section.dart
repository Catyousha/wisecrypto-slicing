import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/themes/themes.dart';
import '../../../logic/logic.dart';
import '../../../widgets/tile/tile.dart';

class WatchlistSection extends StatelessWidget {
  const WatchlistSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Watchlist",
            style: AppText.textNormal.copyWith(
              fontWeight: AppText.semiBold,
            )),
        const SizedBox(height: 8),
        BlocConsumer<UserCubit, UserState>(
          listener: (context, state) {
            if (state.status.isInitial) {
              context.read<UserCubit>().fetchUser();
            }
          },
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: state.user.watchlist?.map((coin) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CoinMarketTile(
                        coinImage: Image.asset(coin.imageSrc!),
                        coinName: coin.name!,
                        coinSymbol: coin.symbol!,
                        coinPrice: coin.currentPrice!,
                        coinGain: coin.priceChange!,
                      ),
                      const SizedBox(height: 8),
                    ],
                  );
                }).toList() ??
                [],
          ),
        ),
      ],
    );
  }
}
