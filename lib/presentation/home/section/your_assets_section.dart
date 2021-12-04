import 'package:flutter/material.dart';
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
        HorizontalCarouselScroller(
          child: Row(),
        ),
      ],
    );
  }
}
