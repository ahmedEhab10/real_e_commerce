import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:real_e_commerce/Core/Errors/Exaption.dart';
import 'package:real_e_commerce/Core/Errors/failuers.dart';
import 'package:real_e_commerce/Core/Services/DataBase_Service.dart';

import 'package:real_e_commerce/Core/Services/FireBase_Auth_Service.dart';
import 'package:real_e_commerce/Core/Utils/Backend_const.dart';

import 'package:real_e_commerce/Features/Auth/data/Models/User_Model.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImp({
    // required this.databaseService,
    required this.firebaseAuthService,
    required this.databaseService,
  });
  @override
  Future<Either<Failuers, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      var user_from_usermodel = UserEntity(
        name: name,
        email: email,
        userId: user.uid,
      );

      await addUserData(user: user_from_usermodel);

      return Right(user_from_usermodel); // maping user model
    } on Custom_Exaption catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return Left(ServerFailuers(e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
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
      var userEntity = await getUserData(
        userId: user.uid,
      ); // return UserModel.fromJson(userdata);
      return Right(userEntity);
    } catch (e) {
      log(
        'there is an error in firebase auth service . Sign in user with email and password and ${e.toString()} ',
      );
      return Left(ServerFailuers('يوجد مشكله حاول مره اخري'));
    }
  }

  @override
  Future<Either<Failuers, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();

      var user_from_usermodel = UserModel.fromFirebaseUser(user);
      addUserData(user: user_from_usermodel);
      return Right(user_from_usermodel);
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log(
        'there is an error in firebase auth service . Sign in user with email and password and ${e.toString()} ',
      );
      return Left(ServerFailuers('يوجد مشكله حاول مره اخري'));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: 'users',
      data: user.toMap(),
      documentId: user.userId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String userId}) async {
    var userdata = await databaseService.getData(
      path: BackendConst.getuserdata,
      documentId: userId,
    );

    return UserModel.fromJson(userdata);
  }
}
