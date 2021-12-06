import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/logic.dart';
import '../../../repository/repository.dart';
import '../../../widgets/widgets.dart';

class MarketCategorySection extends StatelessWidget {
  const MarketCategorySection({Key? key}) : super(key: key);

  List<Widget> _buildMarketCategories(
    BuildContext context,
    MarketState state,
  ) {
    List<Widget> _result = [];
    for (final MarketCategory category in state.market.categories ?? []) {
      _result.add(
        GestureDetector(
          onTap: () {
            context.read<MarketCubit>().selectMarketCategory(category.id ?? -1);
          },
          child: MarketCategoryPill(
            label: category.name ?? '-',
            isSelected: state.selectedCategoryId == category.id,
          ),
        ),
      );
      _result.add(
        const SizedBox(width: 8),
      );
    }
    return _result;
  }

  @override
  Widget build(BuildContext context) {
    return HorizontalCarouselScroller(
      child: BlocConsumer<MarketCubit, MarketState>(
        listener: (context, state) {
          if (state.status.isInitial) {
            context.read<MarketCubit>().fetchMarket();
          }
        },
        builder: (context, state) => Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => context.read<MarketCubit>().selectMarketCategory(-1),
              child: MarketCategoryPill(
                label: 'Favorit',
                isSelected: state.selectedCategoryId == -1,
              ),
            ),
            const SizedBox(width: 8),
            ..._buildMarketCategories(context, state),
          ],
        ),
      ),
    );
  }
}
