import '../../market/market.dart';
import 'models.dart';

class User {
  int? id;
  List<Coin>? favorite;
  String? fullName;
  String? profileImageSrc;
  double? balance;
  List<UserPortfolio>? portfolios;
  List<UserNotification>? notifications;
  List<Coin>? watchlist;

  //constructor
  User({
    this.id,
    this.favorite,
    this.fullName,
    this.profileImageSrc,
    this.balance,
    this.portfolios,
    this.notifications,
    this.watchlist,
  });

  static get empty => User();

  double get totalPortfolio {
    double? result = portfolios?.fold(0, (total, portfolio) {
      return (total ?? 0) + (portfolio.portfolioValue);
    });
    return result?.truncateToDouble() ?? 0;
  }

  List<Coin>? searchCoins(String name) {
    return favorite
        ?.where(
          (coin) => ((coin.name!.toLowerCase().contains(name) ||
              coin.symbol!.toLowerCase().contains(name))),
        )
        .toList();
  }

  /// --------DUMMY DATA--------
  double get balanceToDollar {
    return 25000;
  }

  //copywith
  User copyWith({
    int? id,
    List<Coin>? favorite,
    String? fullName,
    String? profileImageSrc,
    double? balance,
    List<UserPortfolio>? portfolios,
    List<UserNotification>? notifications,
    List<Coin>? watchlist,
  }) {
    return User(
      id: id ?? this.id,
      favorite: favorite ?? this.favorite,
      fullName: fullName ?? this.fullName,
      profileImageSrc: profileImageSrc ?? this.profileImageSrc,
      balance: balance ?? this.balance,
      portfolios: portfolios ?? this.portfolios,
      notifications: notifications ?? this.notifications,
      watchlist: watchlist ?? this.watchlist,
    );
  }
}
