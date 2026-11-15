import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soor_user_app/core/models/user.dart';
import '../../../domain/repo/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo authRepo;

  RegisterCubit({required this.authRepo}) : super(RegisterInitial());

  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController mobile = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  bool agreementPolicy = false;

  Future<void> createAccountWithEmailAndPassword({
    required AppUser appUser,
  }) async {
    final result = await authRepo.createAccountWithEmailAndPassword(
      appUser: appUser,
    );
    if (result is UserCredential) {
      if (!result.user!.emailVerified) {
        emit(EmailNotVerified());
        authRepo.emailVerify(user: result.user!);
        emit(EmailVerified());
      } else {
        emit(RegisterSuccessful());
      }
    } else {
      emit(RegisterError(result.toString()));
    }
  }

  void toggleCheckBox(bool value) {
    agreementPolicy = value;
    emit(ToggleCheckBox());
  }

  @override
  Future<void> close() {
    email.dispose();
    password.dispose();
    name.dispose();
    mobile.dispose();
    confirmPassword.dispose();
    return super.close();
  }
}
