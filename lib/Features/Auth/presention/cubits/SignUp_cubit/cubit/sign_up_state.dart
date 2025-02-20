part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoding extends SignUpState {}

final class Success extends SignUpState {
  final UserEntity userEntity;
  Success(this.userEntity);
}

final class signUpfail extends SignUpState {
  final String Massage;
  signUpfail(this.Massage);
}
