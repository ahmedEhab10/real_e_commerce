import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  AuthRepo authRepo;
  LogInCubit(this.authRepo) : super(LogInInitial());

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(LogInLoading());

    var result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.fold(
      (Failuers) {
        return emit(LogInFailure(message: Failuers.Massage));
      },
      (UserEntity user) {
        emit(LogInSuccess(userEntity: user));
      },
    );
  }
}
