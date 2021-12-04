import '../../../services/coin_services.dart';
import '../coin.dart';

class CoinRepository {
  Future<List<Coin>> getAllCoins() async {
    final allCoins = await CoinServices.getCoins();

    return allCoins;
  }

  Future<Coin> getCoin({
    required String symbol,
  }) async {
    List<Coin> allCoins = await getAllCoins();

    return allCoins.firstWhere((element) => element.symbol == symbol);
  }
}
