import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:real_e_commerce/Core/Errors/Exaption.dart';
import 'package:real_e_commerce/Core/Errors/failuers.dart';
import 'package:real_e_commerce/Core/Services/FireBase_Auth_Service.dart';
import 'package:real_e_commerce/Features/Auth/data/Models/User_Model.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';

class AuthRepoImp extends AuthRepo {
  FirebaseAuthService firebaseAuthService;

  AuthRepoImp({required this.firebaseAuthService});
  @override
  Future<Either<Failuers, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Right(UserModel.fromFirebaseUser(user)); // maping user model
    } on Custom_Exaption catch (e) {
      return Left(ServerFailuers(e.message));
    } catch (e) {
      log(
        'there is an error in firebase auth service . create user with email and password and ${e.toString()} ',
      );
      return Left(ServerFailuers('يوجد مشكله حاول مره اخري'));
    }
  }

  @override
  Future<Either<Failuers, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'there is an error in firebase auth service . Sign in user with email and password and ${e.toString()} ',
      );
      return Left(ServerFailuers('يوجد مشكله حاول مره اخري'));
    }
  }
}
