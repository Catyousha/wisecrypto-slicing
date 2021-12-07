import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../config/themes/themes.dart';
import '../../../widgets/widgets.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Pengaturan",
            style: AppText.textMedium.copyWith(
              fontWeight: AppText.semiBold,
            )),
        const SizedBox(height: 12),
        const OverviewDetailTile(
          title: 'Privasi',
          subtitle: 'Ubah email dan password',
          icon: IconlyBold.lock,
          iconColor: AppColor.turquoise,
          iconBackgroundColor: AppColor.cyan,
        ),
        const SizedBox(height: 8),
        const OverviewDetailTile(
          title: 'Pembayaran',
          subtitle: 'Perbarui pengaturan pembayaran',
          icon: IconlyBold.wallet,
          iconColor: AppColor.orchid,
          iconBackgroundColor: AppColor.magnolia,
        ),
        const SizedBox(height: 8),
        const OverviewDetailTile(
          title: 'Notifikasi',
          subtitle: 'Change notification settings',
          icon: IconlyBold.notification,
          iconColor: AppColor.warning,
          iconBackgroundColor: AppColor.yellowChilean,
        ),
        const SizedBox(height: 8),
        const OverviewDetailTile(
          title: 'Keluar',
          subtitle: 'Keluar dari aplikasi ',
          icon: IconlyBold.logout,
          iconColor: AppColor.danger,
          iconBackgroundColor: AppColor.redMisty,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
