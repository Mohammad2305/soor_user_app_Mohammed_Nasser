import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/routes/routes.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../../../../../core/widgets/custom_input.dart';
import '../../../../../../../core/widgets/password_input.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController password = TextEditingController();
    final TextEditingController mobile = TextEditingController();
    GlobalKey<FormState> signInKey = GlobalKey<FormState>();

    return Form(
      key: signInKey,
      child: Column(
        spacing: 16.h,
        children: [
          CustomInput(
            inputTitle: "phone number".firstCharacterUpper,
            inputController: mobile,
            validator: FormBuilderValidators.phoneNumber(),
            hintText: "+966 000 000 00",
          ),
          PasswordInput(
            inputController: password,
            validator: FormBuilderValidators.password(),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.forgetPassword);
            },
            child: Text(
              "forget password?".firstCharacterUpper,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppColors.mainColor),
            ),
          ).onlyPadding(bottom: 8.h),
          CustomButton(
            onTap: () {
              if(signInKey.currentState!.validate()){
                Navigator.pushNamed(context, AppRoutes.layout);
              }
            },
            icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
            textColor: Colors.white,
            label: "sign in".firstCharacterUpper,
          ),
        ],
      ),
    ).onlyPadding(bottom: 225.h);
  }
}
