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
  }) : user = user ?? User.empty;

  final UserStatus status;
  final User user;

  UserState copyWith({
    UserStatus? status,
    User? user,
  }) {
    return UserState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object> get props => [status, user];
}
