import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/const/main_const.dart';
import '../../../../core/models/user.dart';
import '../../domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  createAccountWithEmailAndPassword({AppUser? appUser}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: appUser!.email, password: appUser.password);
      FirebaseFirestore.instance
          .collection("users")
          .doc(userCredential.user?.uid)
          .set({
        MainAppConst.useFullName: appUser.fullName,
        MainAppConst.userEmail: appUser.email.trim(),
        MainAppConst.userPassword: appUser.mobileNumber,
        MainAppConst.userMobileNumber: appUser.mobileNumber,
        MainAppConst.orderList: appUser.orders,
      });
      // final user = userCredential.user;
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return e;
    }
  }

  @override
  emailVerify({required User? user}) async {
    if (user != null && !user.emailVerified) {
      await user.reload();
      await user.sendEmailVerification();
    }
  }

  @override
  signInWithEmailAndPassword({
    required String password,
    required String email,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      // final user = credential.user;
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else if (e.code == 'invalid-email') {
        return 'Email format is invalid';
      } else if (e.code == 'user-disabled') {
        return 'User account is disabled';
      } else if (e.code == 'too-many-requests') {
        return 'Too many attempts, temporarily blocked';
      } else if (e.code == 'invalid-credential') {
        return 'Email or password is wrong';
      }
    } catch (e) {
      return e;
    }
  }
}
