import 'coin.dart';

class MarketCategory {
  int? id;
  String? name;
  List<Coin>? coins;

  MarketCategory({
    this.id,
    this.name,
    this.coins,
  });

  MarketCategory copyWith({
    int? id,
    String? name,
    List<Coin>? coins,
  }) {
    return MarketCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      coins: coins ?? this.coins,
    );
  }
}
