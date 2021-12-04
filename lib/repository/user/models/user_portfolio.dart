import '../../coin/coin.dart';

class UserPortfolio {
  Coin? coin;
  double? amount;

  UserPortfolio({
    this.coin,
    this.amount,
  });

  double get portfolioValue {
    return (coin?.currentPrice ?? 0) * (amount ?? 0);
  }

  UserPortfolio copyWith({
    Coin? coin,
    double? amount,
  }) {
    return UserPortfolio(
      coin: coin ?? this.coin,
      amount: amount ?? this.amount,
    );
  }
}
