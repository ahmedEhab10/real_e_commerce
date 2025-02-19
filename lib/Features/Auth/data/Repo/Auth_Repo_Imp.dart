import 'package:dartz/dartz.dart';
import 'package:real_e_commerce/Core/Errors/failuers.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future<Either<Failuers, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}
