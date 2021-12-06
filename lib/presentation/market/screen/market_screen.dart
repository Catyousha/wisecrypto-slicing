import 'package:flutter/material.dart';
import 'package:wisecrypto_slicing/presentation/market/section/section.dart';
import '../../../widgets/widgets.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SearchSection(),
            ],
          ),
        ),
      ),
    );
  }
}