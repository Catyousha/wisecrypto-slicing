import 'coin_services.dart' as coin_services;
import '../repository/user/models/models.dart';

class UserServices {
  static Future<User> getUser() async {
    try {
      final user = await Future.delayed(
        const Duration(seconds: 1),
        () => dummyUser,
      );
      return user;
    } catch (e) {
      throw Exception('Failed to load user');
    }
  }
}

User dummyUser = User(
  id: 1,
  fullName: 'Nadila Aulia',
  profileImageSrc: 'assets/bitmap/user/profile_picture.png',
  portfolios: [
    UserPortfolio(
      coin: coin_services.dummyCoins[0],
      amount: 0.0012,
    ),
    UserPortfolio(
      coin: coin_services.dummyCoins[1],
      amount: 0.009,
    ),
  ],
  watchlist: [
    coin_services.dummyCoins[0],
    coin_services.dummyCoins[1],
    coin_services.dummyCoins[2],
    coin_services.dummyCoins[3],
    coin_services.dummyCoins[4],
  ],
);
