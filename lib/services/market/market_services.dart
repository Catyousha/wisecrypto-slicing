import '../../repository/repository.dart';
import 'coin_services.dart' as coin_services;

class MarketServices {
  static Future<Market> fetchMarket() async {
    
    try {
      final response = await Future.delayed(
        const Duration(seconds: 1),
        () => dummyMarket,
      );
      return response;

    } catch (e) {
      throw Exception('Fail to load market');
    }
  }

  static Future<List<MarketCategory>> fetchAllMarketCategories() async {
    try {
      final response = await Future.delayed(
        const Duration(seconds: 1),
        () => dummyMarketCategories,
      );
      return response;
    } catch (e) {
      throw Exception('Fail to load all market categories');
    }
  }
}

final Market dummyMarket = Market(
  currentTime: DateTime.now(),
  categories: dummyMarketCategories,
);

final List<MarketCategory> dummyMarketCategories = [
  MarketCategory(
    id: 1,
    name: 'FIAT Pasar',
    coins: <Coin>[
      coin_services.dummyCoins[3],
    ],
  ),
  MarketCategory(
    id: 2,
    name: 'ETF Pasar',
    coins: <Coin>[
      coin_services.dummyCoins[1],
    ],
  ),
  MarketCategory(
    id: 3,
    name: 'BNB Pasar',
    coins: <Coin>[
      coin_services.dummyCoins[4],
    ],
  ),
  MarketCategory(
    id: 4,
    name: 'BTC Pasar',
    coins: <Coin>[
      coin_services.dummyCoins[0],
    ],
  ),
  MarketCategory(
    id: 5,
    name: 'ALTS Pasar',
    coins: <Coin>[
      coin_services.dummyCoins[2],
    ],
  ),
];
