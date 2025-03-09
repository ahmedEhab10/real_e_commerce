//------------------------------------------------------------------------------

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:real_e_commerce/Core/Errors/Exaption.dart';

class FirebaseAuthService {
  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

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
        throw Custom_Exaption(message: 'الباسورد ضعيف');
      } else if (e.code == 'email-already-in-use') {
        throw Custom_Exaption(message: 'لقد تم استخدام هذا الايميل بالفعل');
      } else if (e.code == 'network-request-failed') {
        throw Custom_Exaption(message: ' لا يوجد اتصال بالانترنت');
      } else {
        throw Custom_Exaption(message: e.message.toString());
      }
    } catch (e) {
      log(
        'there is an error in firebase auth service . create user with email and password and ${e.toString()} ',
      );
      throw Custom_Exaption(message: 'لقد حدث خطأ ما. حاول مره اخري');
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Custom_Exaption(message: 'البريد الالكتروني او كلمة السر غير');
      } else if (e.code == 'wrong-password') {
        throw Custom_Exaption(message: 'الباسورد غير صحيح');
      } else if (e.code == 'network-request-failed') {
        throw Custom_Exaption(message: ' لا يوجد اتصال بالانترنت');
      } else {
        throw Custom_Exaption(message: e.message.toString());
      }
    } catch (e) {
      throw Custom_Exaption(message: 'لقد حدث خطأ ما. حاول مره اخري');
    }
  }

  Future<User> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return (await FirebaseAuth.instance.signInWithCredential(
        credential,
      )).user!;
    } catch (e) {
      throw Custom_Exaption(message: 'لقد حدث خطأ ما. حاول مره اخري');
    }
  }

  bool isSignedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
