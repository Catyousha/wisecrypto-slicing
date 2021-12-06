import 'dart:async';

import '../../repository/market/market.dart';

class CoinServices {
  static Future<List<Coin>> getCoins() async {
    try {
      final response = await Future.delayed(
        const Duration(seconds: 1),
        () => dummyCoins,
      );
      return response;
    } catch (e) {
      throw Exception('Failed to load coin data');
    }
  }
}

final List<Coin> dummyCoins = [
  Coin(
    id: 1,
    name: 'Bitcoin',
    symbol: 'BTC',
    currentPrice: 54382.64,
    priceChange: 15.3,
    imageSrc: 'assets/bitmap/coin/coin_btc.png',
  ),
  Coin(
    id: 2,
    name: 'Etherium',
    symbol: 'ETH',
    currentPrice: 4145.61,
    priceChange: -2.1,
    imageSrc: 'assets/bitmap/coin/coin_eth.png',
  ),
  Coin(
    id: 3,
    name: 'Litecoin',
    symbol: 'LTC',
    currentPrice: 207.3,
    priceChange: -1.1,
    imageSrc: 'assets/bitmap/coin/coin_ltc.png',
  ),
  Coin(
    id: 4,
    name: 'Solana',
    symbol: 'SOL',
    currentPrice: 227.93,
    priceChange: 15.3,
    imageSrc: 'assets/bitmap/coin/coin_sol.png',
  ),
  Coin(
    id: 5,
    name: 'Binance Coin',
    symbol: 'BNB',
    currentPrice: 610.5,
    priceChange: -2.35,
    imageSrc: 'assets/bitmap/coin/coin_bnb.png',
  ),
  Coin(
    id: 6,
    name: 'Ripple',
    symbol: 'XRP',
    currentPrice: 1.0358,
    priceChange: 15.3,
    imageSrc: 'assets/bitmap/coin/coin_xrp.png',
  ),
];
