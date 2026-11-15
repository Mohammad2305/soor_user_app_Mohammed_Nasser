import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/themes/app_text_styles.dart';
import '../../../../manager/register/register_cubit.dart';
import 'register_form.dart';

class RegisterFormBlocListener extends StatelessWidget {
  const RegisterFormBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(color: AppColors.mainColor),
            ),
          );
        }
        else if (state is RegisterSuccessful) {
          Navigator.pop(context); // close loading
          Navigator.pushNamed(context, AppRoutes.phoneCheck);
        }
        else if (state is RegisterError) {
          Navigator.pop(context); // close loading
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                icon: Icon(
                  Icons.error_outline_outlined,
                  color: AppColors.mainColor,
                ),
                title: Text("Error", style: AppTextStyles.textFtS16FW400),
                content: Text(
                  state.error,
                  style: AppTextStyles.textFtS14FW500,
                  textAlign: TextAlign.center,
                ),
              );
            },
          );
        }
      },
      child: RegisterForm(),
    );
  }
}
