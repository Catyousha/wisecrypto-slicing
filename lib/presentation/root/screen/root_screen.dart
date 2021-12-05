import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../../config/themes/themes.dart';

import '../../presentation_page.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  final List<Widget> _mainScreens = const <Widget>[
    HomeScreen(),
    MarketScreen(),
    ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> _navbarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyBold.home),
        inactiveIcon: const Icon(IconlyLight.home),
        title: 'Home',
        activeColorPrimary: AppColor.primary,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyBold.bag),
        inactiveIcon: const Icon(IconlyLight.bag),
        title: 'Market',
        activeColorPrimary: AppColor.primary,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyBold.profile),
        inactiveIcon: const Icon(IconlyLight.profile),
        title: 'Profile',
        activeColorPrimary: AppColor.primary,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(initialIndex: 0),
      screens: _mainScreens,
      items: _navbarItems(),
      navBarStyle: NavBarStyle.style3,
    );
  }
}
