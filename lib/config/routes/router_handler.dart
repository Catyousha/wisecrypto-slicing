import 'package:flutter/material.dart';
import '../../presentation/presentation_page.dart';
import 'route_name.dart';

Widget dummyPage = const Scaffold(
  body: Center(),
);

Route<dynamic> routeController(RouteSettings settings) {
  switch (settings.name) {
    case Routes.root:
      return MaterialPageRoute(builder: (_) => const RootScreen());
    case Routes.home:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case Routes.notification:
      return MaterialPageRoute(builder: (_) => const NotificationScreen());
    case Routes.profile:
      return MaterialPageRoute(builder: (_) => dummyPage);
    case Routes.market:
      return MaterialPageRoute(builder: (_) => const MarketScreen());
    default:
      return MaterialPageRoute(builder: (_) => dummyPage);
  }
}
