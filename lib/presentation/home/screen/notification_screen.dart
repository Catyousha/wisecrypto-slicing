import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';

import '../../../repository/user/models/models.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopBar(
          title: "Notifikasi",
          leadingIcon: IconlyLight.arrow_left,
          leadingCallback: () => Navigator.pop(context),
        ),
        body: PageContainer(
          child: BlocConsumer<UserCubit, UserState>(
            listener: (context, state) {
              if (state.status.isInitial) {
                context.read<UserCubit>().fetchUser();
              }
            },
            builder: (context, state) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: state.user.notifications?.map((e) {
                    return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: NotificationTile(
                          title: e.title ?? '-',
                          message: e.message ?? '-',
                          dateDescription:
                              DateFormat('dd MMMM yyyy (HH.mm)', 'id')
                                  .format(e.createdAt!),
                          icon: e.type!.designatedIcon,
                          iconColor: e.type!.designatedIconColor,
                          iconBackgroundColor: e.type!.designatedSecondaryColor,
                        ));
                  }).toList() ??
                  [],
            ),
          ),
        ),
      ),
    );
  }
}
