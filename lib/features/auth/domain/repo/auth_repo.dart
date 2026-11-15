import 'package:firebase_auth/firebase_auth.dart';
import 'package:soor_user_app/core/models/user.dart';

abstract class AuthRepo {
  createAccountWithEmailAndPassword({AppUser? appUser});

  signInWithEmailAndPassword({required String password, required String email});

  emailVerify({required User? user});
}
