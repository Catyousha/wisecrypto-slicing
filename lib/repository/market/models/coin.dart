import 'package:wisecrypto_slicing/repository/repository.dart';

class Coin {
  int? id;
  String? name;
  String? symbol;
  double? currentPrice;
  double? priceChange;
  String? imageSrc;
  List<MarketCategory>? categories;

  Coin({
    this.id,
    this.name,
    this.symbol,
    this.currentPrice,
    this.priceChange,
    this.imageSrc,
    this.categories,
  });

  Coin copyWith({
    int? id,
    String? name,
    String? symbol,
    double? currentPrice,
    double? priceChange,
    String? imageSrc,
    List<MarketCategory>? categories,
  }) {
    return Coin(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      currentPrice: currentPrice ?? this.currentPrice,
      priceChange: priceChange ?? this.priceChange,
      imageSrc: imageSrc ?? this.imageSrc,
      categories: categories ?? this.categories,
    );
  }
}
