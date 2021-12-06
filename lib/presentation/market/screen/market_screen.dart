import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../section/section.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SearchSection(),
              SizedBox(height: 16),
              MarketCategorySection(),
              SizedBox(height: 16),
              CoinMarketListSection(),
            ],
          ),
        ),
      ),
    );
  }
}
