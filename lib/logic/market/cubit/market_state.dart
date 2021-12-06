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

  MarketState({
    this.status = MarketStatus.initial,
    Market? market,
  }) : market = Market.empty;

  MarketState copyWith({
    MarketStatus? status,
    Market? market,
  }) {
    return MarketState(
      status: status ?? this.status,
      market: market ?? this.market,
    );
  }

  @override
  List<Object> get props => [status, market];
}
