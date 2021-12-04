import 'package:flutter/material.dart';
import '../../presentation/presentation_page.dart';
import 'route_name.dart' as route_name;

Widget dummyPage = const Scaffold(
  body: Center(),
);

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case route_name.home:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case route_name.notification:
      return MaterialPageRoute(builder: (_) => dummyPage);
    case route_name.profile:
      return MaterialPageRoute(builder: (_) => dummyPage);
    case route_name.market:
      return MaterialPageRoute(builder: (_) => dummyPage);
    default:
      return MaterialPageRoute(builder: (_) => dummyPage);
  }
}
