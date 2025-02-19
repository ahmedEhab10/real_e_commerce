//------------------------------------------------------------------------------

import 'package:firebase_auth/firebase_auth.dart';
import 'package:real_e_commerce/Core/Errors/Exaption.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw Custom_Exaption(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Custom_Exaption(
          message: 'The account already exists for that email.',
        );
      } else {
        throw Custom_Exaption(message: e.message.toString());
      }
    } catch (e) {
      throw Custom_Exaption(
        message: 'there was an error creating user try again later',
      );
    }
  }
}
