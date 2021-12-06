import '../../market/market.dart';
import 'user_portfolio.dart';

class User {
  int? id;
  List<Coin>? favorite;
  String? fullName;
  String? profileImageSrc;
  List<UserPortfolio>? portfolios;
  List<Coin>? watchlist;

  User({
    this.id,
    this.favorite,
    this.fullName,
    this.profileImageSrc,
    this.portfolios,
    this.watchlist,
  });

  static get empty => User();

  double get totalPortfolio {
    double? result = portfolios?.fold(0, (total, portfolio) {
      return (total ?? 0) + (portfolio.portfolioValue);
    });
    return result?.truncateToDouble() ?? 0;
  }

  //copywith
  User copyWith({
    int? id,
    List<Coin>? favorite,
    String? fullName,
    String? profileImageSrc,
    List<UserPortfolio>? portfolios,
    List<Coin>? watchlist,
  }) {
    return User(
      id: id ?? this.id,
      favorite: favorite ?? this.favorite,
      fullName: fullName ?? this.fullName,
      profileImageSrc: profileImageSrc ?? this.profileImageSrc,
      portfolios: portfolios ?? this.portfolios,
      watchlist: watchlist ?? this.watchlist,
    );
  }
}
