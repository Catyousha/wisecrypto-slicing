class Coin {
  int? id;
  String? name;
  String? symbol;
  double? currentPrice;
  double? priceChange;
  String? imageSrc;

  Coin({
    this.id,
    this.name,
    this.symbol,
    this.currentPrice,
    this.priceChange,
    this.imageSrc,
  });

  Coin copyWith({
    int? id,
    String? name,
    String? symbol,
    double? currentPrice,
    double? priceChange,
    String? imageSrc,
  }) {
    return Coin(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      currentPrice: currentPrice ?? this.currentPrice,
      priceChange: priceChange ?? this.priceChange,
      imageSrc: imageSrc ?? this.imageSrc,
    );
  }
}
