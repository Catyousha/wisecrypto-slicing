import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../config/themes/themes.dart';
import '../widgets.dart';

class AssetsOverviewContainer extends StatelessWidget {
  const AssetsOverviewContainer({
    Key? key,
    required this.coinImage,
    required this.coinSymbol,
    required this.coinName,
    required this.gain,
    required this.portfolioValue,
    required this.amountKeep,
  }) : super(key: key);

  final Image coinImage;
  final String coinSymbol;
  final String coinName;
  final double gain;
  final double portfolioValue;
  final double amountKeep;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.6,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //-------upper
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RoundedBoxImage(
                padding: const EdgeInsets.all(6),
                width: 40,
                height: 40,
                child: coinImage,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(coinSymbol,
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.bold,
                        )),
                    Text(coinName,
                        style: AppText.textExtraSmall.copyWith(
                          color: AppColor.gray,
                        )),
                  ],
                ),
              ),
              GainPill(gain: gain)
            ],
          ),

          const SizedBox(height: 8),
          const Divider(
            height: 0.3,
            color: AppColor.gray2,
          ),
          const SizedBox(height: 8),

          //-------lower
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Portofolio',
                      style: AppText.textExtraSmall.copyWith(
                        color: AppColor.gray2,
                      )),
                  Text('\$${portfolioValue.toStringAsFixed(2)}',
                      style: AppText.textNormal.copyWith(
                        fontWeight: AppText.bold,
                      )),
                ],
              ),
              Text("${amountKeep.toString()} $coinSymbol",
                  style: AppText.textExtraSmall.copyWith(
                    color: AppColor.gray,
                    fontWeight: AppText.bold,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
