import 'package:flutter/material.dart';
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
            children: const <Widget>[
              NameHeaderSection(),
              SizedBox(height: 16),
              PortfolioOverviewSection(),
            ],
          ),
        ),
      ),
    );
  }
}
