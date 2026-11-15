import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/models/user.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../../manager/register/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {
        if (!context.read<RegisterCubit>().agreementPolicy) {
          return;
        }
        if (context.read<RegisterCubit>().password.text !=
            context.read<RegisterCubit>().confirmPassword.text) {
          return;
        }
        context.read<RegisterCubit>().createAccountWithEmailAndPassword(
          appUser: AppUser(
            email: context.read<RegisterCubit>().email.text,
            fullName: context.read<RegisterCubit>().name.text,
            password: context.read<RegisterCubit>().password.text,
            mobileNumber: context.read<RegisterCubit>().mobile.text,
          ),
        );
        Navigator.pushNamed(
          context,
          AppRoutes.phoneCheck,
          arguments: context.read<RegisterCubit>().mobile.text,
        );
      },
      icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
      label: "register".firstCharacterUpper,
    ).onlyPadding(bottom: 40.h);
  }
}
