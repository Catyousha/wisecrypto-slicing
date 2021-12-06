part of 'user_cubit.dart';

enum UserStatus { initial, loading, loaded, failure }

extension UserStatusExt on UserStatus {
  bool get isInitial => this == UserStatus.initial;
  bool get isLoading => this == UserStatus.loading;
  bool get isLoaded => this == UserStatus.loaded;
  bool get isFailure => this == UserStatus.failure;
}

class UserState extends Equatable {
  UserState({
    this.status = UserStatus.initial,
    User? user,
    this.searchedFavCoins = '',
  }) : user = user ?? User.empty;

  final UserStatus status;
  final User user;
  final String searchedFavCoins;

  List<Coin>? get filteredCoins {
    if (searchedFavCoins == '') return user.favorite;
    return user.searchCoins(searchedFavCoins);
  }

  UserState copyWith({
    UserStatus? status,
    User? user,
    String? searchedFavCoins,
  }) {
    return UserState(
      status: status ?? this.status,
      user: user ?? this.user,
      searchedFavCoins: searchedFavCoins ?? this.searchedFavCoins,
    );
  }

  @override
  List<Object> get props => [status, user, searchedFavCoins];
}
