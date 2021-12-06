part of 'market_cubit.dart';

enum MarketStatus { initial, loading, loaded, failure }

extension MarketStatusExt on MarketStatus {
  bool get isInitial => this == MarketStatus.initial;
  bool get isLoading => this == MarketStatus.loading;
  bool get isLoaded => this == MarketStatus.loaded;
  bool get isFailure => this == MarketStatus.failure;
}

class MarketState extends Equatable {
  final MarketStatus status;
  final Market market;
  final int selectedCategoryId;

  MarketState({
    this.status = MarketStatus.initial,
    this.selectedCategoryId = -1,
    Market? market,
  }) : market = market ?? Market.empty;

  List<Coin>? get categoryCoins {
    return market.categories?[selectedCategoryId - 1].coins;
  }

  //copywith
  MarketState copyWith({
    MarketStatus? status,
    Market? market,
    int? selectedCategoryId,
  }) {
    return MarketState(
      status: status ?? this.status,
      market: market ?? this.market,
      selectedCategoryId: selectedCategoryId ?? this.selectedCategoryId,
    );
  }

  @override
  List<Object> get props => [status, market, selectedCategoryId];
}
