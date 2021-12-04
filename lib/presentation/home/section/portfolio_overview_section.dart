import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../widgets/container/container.dart';
import '../../../config/themes/themes.dart';

class PortfolioOverviewSection extends StatelessWidget {
  const PortfolioOverviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphBgContainer(
      padding: const EdgeInsets.symmetric(
        vertical: 26,
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Total Portofolio",
                  style: AppText.textMedium.copyWith(
                    color: AppColor.white,
                    fontWeight: AppText.semiBold,
                  )),
              Text("\$56.98",
                  style: AppText.textExtraLarge.copyWith(
                    color: AppColor.white,
                    fontWeight: AppText.bold,
                  )),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: <Widget>[
                Transform.rotate(
                  angle: pi / 4,
                  child: const Icon(
                    IconlyLight.arrow_up,
                    size: 16,
                    color: AppColor.primary,
                  ),
                ),
                const SizedBox(width: 4),
                Text("+15.3%%",
                    style: AppText.textSmall.copyWith(
                      color: AppColor.primary,
                      fontWeight: AppText.bold,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
