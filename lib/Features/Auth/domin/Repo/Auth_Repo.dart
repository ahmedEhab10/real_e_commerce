import 'package:dartz/dartz.dart';
import 'package:real_e_commerce/Core/Errors/failuers.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';

abstract class AuthRepo {
  Future<Either<Failuers, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failuers, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future addUserData({required UserEntity user});

  Future<Either<Failuers, UserEntity>> signInWithGoogle();

  Future<UserEntity> getUserData({required String userId});
}
