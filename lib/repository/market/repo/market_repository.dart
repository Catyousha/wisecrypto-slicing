import '../../../services/services.dart';

import '../market.dart';

class MarketRepository {
  Future<Market>? getMarket() async {
    final market = await MarketServices.fetchMarket();
    return market;
  }

  Future<List<MarketCategory>>? getAllMarketCategories() async {
    final allCategories = await MarketServices.fetchAllMarketCategories();
    return allCategories;
  }
}
