import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../section/section.dart';
import '../../../config/themes/themes.dart';
import '../../../widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              ProfileHeaderIdentitySection(),
              SizedBox(height: 24),
              BalanceSection(),
              SizedBox(height: 64),
              OverviewDetailTile(
                title: 'Daftar Transaksi',
                subtitle: 'Transaksi Yang Anda Miliki',
                icon: IconlyBold.paper_negative,
                iconColor: AppColor.primary,
                iconBackgroundColor: AppColor.greenBubbles,
              ),
              SizedBox(height: 24),
              SettingsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
