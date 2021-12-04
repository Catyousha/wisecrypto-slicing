import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisecrypto_slicing/constants/constants.dart';
import '../../../logic/user/user.dart';
import '../../../widgets/widgets.dart';
import '../section/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BlocConsumer<UserCubit, UserState>(
                listener: (context, state) async {
                  if (state.status.isInitial) {
                    await context.read<UserCubit>().fetchUser();
                  }
                },
                builder: (context, state) => NameHeaderSection(
                  fullName: state.user.fullName ?? '-',
                  profilePicture: AssetImage(
                    state.user.profileImageSrc ??
                        ImageConstant.defaultProfilePic,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const PortfolioOverviewSection(),
            ],
          ),
        ),
      ),
    );
  }
}
