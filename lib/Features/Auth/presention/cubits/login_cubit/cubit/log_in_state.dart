part of 'log_in_cubit.dart';

@immutable
sealed class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInLoading extends LogInState {}

final class LogInSuccess extends LogInState {
  UserEntity userEntity;
  LogInSuccess({required this.userEntity});
}

final class LogInFailure extends LogInState {
  String message;
  LogInFailure({required this.message});
}
