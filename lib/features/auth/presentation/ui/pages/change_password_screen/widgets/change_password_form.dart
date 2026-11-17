import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/paddings.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../../../../../core/widgets/password_input.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> changePasswordFormKey = GlobalKey<FormState>();
    TextEditingController passwordKey = TextEditingController();
    TextEditingController confirmPasswordKey = TextEditingController();

    return Form(
      key: changePasswordFormKey,
      child: Column(
        spacing: 32.h,
        children: [
          PasswordInput(
            inputController: passwordKey,
            validator: FormBuilderValidators.password(),
          ),
          PasswordInput(
            inputTitle: "confirm",
            inputController: confirmPasswordKey,
            validator: FormBuilderValidators.password(),
          ),
          CustomButton(
            onTap: () {
              if (changePasswordFormKey.currentState!.validate()) {
                Navigator.pushNamed(
                  context,
                  AppRoutes.success,
                  arguments: "A strong password has been set.",
                );
              }
            },
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
            label: "save".firstCharacterUpper,
          ).onlyPadding(bottom: 40.h),
        ],
      ),
    );
  }
}
