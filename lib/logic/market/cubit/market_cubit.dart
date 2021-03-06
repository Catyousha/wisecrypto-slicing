import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repository/repository.dart';

part 'market_state.dart';

class MarketCubit extends Cubit<MarketState> {
  MarketCubit(this._marketRepository) : super(MarketState());

  final MarketRepository _marketRepository;

  Future<void> fetchMarket() async {
    try {
      emit(state.copyWith(
        status: MarketStatus.loading,
      ));
      final market = await _marketRepository.getMarket();
      emit(state.copyWith(
        market: market,
        status: MarketStatus.loaded,
      ));
    } on Exception {
      emit(state.copyWith(
        status: MarketStatus.failure,
      ));
    }
  }

  void selectMarketCategory(int id) async {
    emit(state.copyWith(
      status: MarketStatus.loading,
    ));
    if (state.market == Market.empty) await fetchMarket();
    emit(state.copyWith(
      selectedCategoryId: id,
      status: MarketStatus.loaded,
    ));
  }

  void searchCoins(String query) async {
    emit(state.copyWith(
      status: MarketStatus.loading,
    ));
    if (state.market == Market.empty) await fetchMarket();
    emit(state.copyWith(
      searchedValue: query,
      status: MarketStatus.loaded,
    ));
  }
}
