import 'package:dartz/dartz.dart';
import 'package:real_e_commerce/Core/Errors/failuers.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';

abstract class AuthRepo {
  Future<Either<Failuers, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
}
