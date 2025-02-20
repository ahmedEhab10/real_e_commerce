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
      throw Left(ServerFailuers(e.message));
    } catch (e) {
      throw Left(ServerFailuers(e.toString()));
    }
  }
}
