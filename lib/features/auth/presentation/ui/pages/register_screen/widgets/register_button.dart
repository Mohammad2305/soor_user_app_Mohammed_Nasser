import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/widgets/custom_button.dart';

class RegisterButton extends StatelessWidget {
  final String phoneNumber;
  final GlobalKey<FormState> formKey;
  const RegisterButton({super.key, required this.phoneNumber, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {
        if(formKey.currentState!.validate()){
          Navigator.pushNamed(
            context,
            AppRoutes.phoneCheck,
            arguments: {
              "mobile": phoneNumber,
              "screenName": AppRoutes.register
            },
          );
        }
      },
      icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
      label: "register".firstCharacterUpper,
    ).onlyPadding(bottom: 40.h);
  }
}
