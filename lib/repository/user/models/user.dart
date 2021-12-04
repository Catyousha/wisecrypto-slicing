import 'package:wisecrypto_slicing/repository/user/models/user_portfolio.dart';

class User {
  int? id;
  String? fullName;
  String? profileImageSrc;
  List<UserPortfolio>? portfolios;

  User({
    this.id,
    this.fullName,
    this.profileImageSrc,
    this.portfolios,
  });

  static get empty => User();

  User copyWith({
    int? id,
    String? fullName,
    String? profileImageSrc,
    List<UserPortfolio>? portfolios,
  }) {
    return User(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      profileImageSrc: profileImageSrc ?? this.profileImageSrc,
      portfolios: portfolios ?? this.portfolios,
    );
  }
}
