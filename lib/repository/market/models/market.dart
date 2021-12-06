import 'market_category.dart';

class Market {
  List<MarketCategory>? categories;
  DateTime? currentTime;

  Market({
    this.categories,
    this.currentTime,
  });

  static Market get empty => Market();

  Market copyWith({List<MarketCategory>? categories, DateTime? currentTime}) {
    return Market(
        categories: categories ?? this.categories,
        currentTime: currentTime ?? this.currentTime);
  }
}
