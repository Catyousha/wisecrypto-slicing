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
  final String searchQuery;

  MarketState({
    this.status = MarketStatus.initial,
    this.selectedCategoryId = -1,
    this.searchQuery = '',
    Market? market,
  }) : market = market ?? Market.empty;

  List<Coin>? get categoryCoins {
    return market.categories?[selectedCategoryId - 1].coins;
  }

  List<Coin>? get filteredCoins {
    if (searchQuery == '') return categoryCoins;
    return market.categories?[selectedCategoryId - 1].coins
        ?.where(
          (element) => ((element.name!.toLowerCase().contains(searchQuery)) ||
              (element.symbol!.toLowerCase().contains(searchQuery))),
        )
        .toList();
  }

  MarketState copyWith({
    MarketStatus? status,
    Market? market,
    int? selectedCategoryId,
    String? searchedValue,
  }) {
    return MarketState(
      status: status ?? this.status,
      market: market ?? this.market,
      selectedCategoryId: selectedCategoryId ?? this.selectedCategoryId,
      searchQuery: searchedValue ?? this.searchQuery,
    );
  }

  @override
  List<Object> get props => [
        status,
        market,
        selectedCategoryId,
        searchQuery,
      ];
}
