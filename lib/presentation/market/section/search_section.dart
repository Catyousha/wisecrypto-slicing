import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisecrypto_slicing/logic/logic.dart';
import '../../../widgets/widgets.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchField(
      callback: (value) {
        if (context.read<MarketCubit>().state.selectedCategoryId != -1) {
          context.read<MarketCubit>().searchCoins(value);
        } else {
          context.read<UserCubit>().searchFavCoins(value);
        }
      },
    );
  }
}
