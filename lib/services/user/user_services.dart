import '../market/coin_services.dart' as coin_services;
import '../../repository/user/models/models.dart';

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
    coin_services.dummyCoins[5],
  ],
  favorite: [
    coin_services.dummyCoins[0],
    coin_services.dummyCoins[1],
    coin_services.dummyCoins[2],
    coin_services.dummyCoins[3],
    coin_services.dummyCoins[4],
    coin_services.dummyCoins[5],
  ],
  notifications: [
    UserNotification(
      id: 1,
      title: 'Portofolio Meningkat',
      message: 'Kenaikan aset Bitcoin sebesar 1.1%',
      type: NotificationType.portfolioGained,
      createdAt: DateTime(2021, 11, 29, 13),
    ),
    UserNotification(
      id: 2,
      title: 'Transaksi Berhasil',
      message: 'Pembelian bitcoin senilai 0,00001 berhasil dilakukan',
      type: NotificationType.transactionSuccess,
      createdAt: DateTime(2021, 11, 29, 13),
    ),
    UserNotification(
      id: 3,
      title: 'Transaksi Diproses',
      message: 'Pengisian saldo senilai \$10 menunggu pembayaran',
      type: NotificationType.transactionDelay,
      createdAt: DateTime(2021, 11, 29, 13),
    ),
    UserNotification(
      id: 4,
      title: 'Pembayaran Berhasil',
      message: 'Pengisian saldo senilai \$10 berhasil dilakukan',
      type: NotificationType.transactionSuccess,
      createdAt: DateTime(2021, 11, 29, 13),
    ),
    UserNotification(
      id: 5,
      title: 'Transaksi Gagal',
      message: 'Pengisian saldo senilai \$10 gagal ',
      type: NotificationType.transactionFailed,
      createdAt: DateTime(2021, 11, 29, 13),
    ),
  ],
);
