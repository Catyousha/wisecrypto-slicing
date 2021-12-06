import 'package:flutter/material.dart';
import '../../utils/app_utils.dart';
import '../../config/themes/themes.dart';
import '../widgets.dart';

class CoinMarketTile extends StatelessWidget {
  const CoinMarketTile({
    Key? key,
    required this.coinImage,
    required this.coinName,
    required this.coinSymbol,
    required this.coinPrice,
    required this.coinGain,
  }) : super(key: key);

  final Image coinImage;
  final String coinName;
  final String coinSymbol;
  final double coinPrice;
  final double coinGain;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RoundedBoxImage(
            child: coinImage,
            padding: const EdgeInsets.all(12),
            height: 64,
            width: 64,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('$coinSymbol/BUSD',
                    style: AppText.textSemiLarge.copyWith(
                      fontWeight: AppText.bold,
                    )),
                const SizedBox(height: 4),
                Text(coinName,
                    style: AppText.textMedium.copyWith(
                      color: AppColor.gray,
                    )),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(AppUtils.formatCurrency.format(coinPrice),
                  style: AppText.textMedium.copyWith(
                    fontWeight: AppText.bold,
                  )),
              const SizedBox(height: 4),
              GainPill(gain: coinGain),
            ],
          ),
        ],
      ),
    );
  }
}
