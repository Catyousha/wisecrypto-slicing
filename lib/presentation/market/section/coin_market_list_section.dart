import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/logic.dart';
import '../../../widgets/tile/coin_market_tile.dart';

class CoinMarketListSection extends StatelessWidget {
  const CoinMarketListSection({Key? key}) : super(key: key);

  Widget _buildFavoriteList(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state.status.isInitial) {
          context.read<UserCubit>().fetchUser();
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: state.filteredCoins?.map((e) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: CoinMarketTile(
                    coinImage: Image.asset(e.imageSrc!),
                    coinName: e.name!,
                    coinSymbol: e.symbol!,
                    coinPrice: e.currentPrice!,
                    coinGain: e.priceChange!,
                  ),
                );
              }).toList() ??
              [],
        );
      },
    );
  }

  Widget _buildMarketCoinList(BuildContext context, MarketState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: state.filteredCoins?.map((e) {
            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: CoinMarketTile(
                coinImage: Image.asset(e.imageSrc!),
                coinName: e.name!,
                coinSymbol: e.symbol!,
                coinPrice: e.currentPrice!,
                coinGain: e.priceChange!,
              ),
            );
          }).toList() ??
          [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MarketCubit, MarketState>(
      listener: (context, state) {
        if (state.status.isInitial) {
          context.read<MarketCubit>().fetchMarket();
        }
      },
      builder: (context, state) {
        return (state.selectedCategoryId == -1)
            ? _buildFavoriteList(context)
            : _buildMarketCoinList(context, state);
      },
    );
  }
}
