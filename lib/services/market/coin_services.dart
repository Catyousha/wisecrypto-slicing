import 'dart:async';

import '../../repository/market/market.dart';
import 'market_services.dart' as mcs;

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
    categories: <MarketCategory>[
      mcs.dummyMarketCategories[0],
      mcs.dummyMarketCategories[4],
    ],
  ),
  Coin(
    id: 2,
    name: 'Etherium',
    symbol: 'ETH',
    currentPrice: 4145.61,
    priceChange: -2.1,
    imageSrc: 'assets/bitmap/coin/coin_eth.png',
    categories: <MarketCategory>[
      mcs.dummyMarketCategories[0],
      mcs.dummyMarketCategories[2],
    ],
  ),
  Coin(
    id: 3,
    name: 'Litecoin',
    symbol: 'LTC',
    currentPrice: 207.3,
    priceChange: -1.1,
    imageSrc: 'assets/bitmap/coin/coin_ltc.png',
    categories: <MarketCategory>[
      mcs.dummyMarketCategories[0],
      mcs.dummyMarketCategories[5],
    ],
  ),
  Coin(
    id: 4,
    name: 'Solana',
    symbol: 'SOL',
    currentPrice: 227.93,
    priceChange: 15.3,
    imageSrc: 'assets/bitmap/coin/coin_sol.png',
    categories: <MarketCategory>[
      mcs.dummyMarketCategories[0],
      mcs.dummyMarketCategories[1],
    ],
  ),
  Coin(
    id: 5,
    name: 'Binance Coin',
    symbol: 'BNB',
    currentPrice: 610.5,
    priceChange: -2.35,
    imageSrc: 'assets/bitmap/coin/coin_bnb.png',
    categories: <MarketCategory>[
      mcs.dummyMarketCategories[0],
      mcs.dummyMarketCategories[3],
    ],
  ),
  Coin(
    id: 6,
    name: 'Ripple',
    symbol: 'XRP',
    currentPrice: 1.0358,
    priceChange: 15.3,
    imageSrc: 'assets/bitmap/coin/coin_xrp.png',
    categories: <MarketCategory>[
      mcs.dummyMarketCategories[0],
    ],
  ),
];
