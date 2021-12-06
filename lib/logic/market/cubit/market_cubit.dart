import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repository/repository.dart';

part 'market_state.dart';

// make cubit
class MarketCubit extends Cubit<MarketState> {
  MarketCubit() : super(MarketState());

  final MarketRepository _marketRepository = MarketRepository();

  Future<void> getMarket() async {
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
}
