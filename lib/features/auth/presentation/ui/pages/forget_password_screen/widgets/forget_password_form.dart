import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/paddings.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/routes/routes.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../../../../../core/widgets/custom_input.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> forgetPasswordKey = GlobalKey<FormState>();
    TextEditingController mobile = TextEditingController();

    return Form(
      key: forgetPasswordKey,
      child: Column(
        spacing: 32.h,
        children: [
          CustomInput(
            inputTitle: "phone number".firstCharacterUpper,
            inputController: mobile,
            validator: FormBuilderValidators.phoneNumber(),
            hintText: "+966 000 000 00",
          ),
          CustomButton(
            onTap: () {
              if(forgetPasswordKey.currentState!.validate()){
                Navigator.pushNamed(
                  context,
                  AppRoutes.phoneCheck,
                  arguments: {
                    "mobile": mobile.text,
                    "screenName": AppRoutes.forgetPassword
                  },
                );
              }
            },
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppBoxDecoration.general(
              AppColors.mainColor,
              8.r,
            ),
            label: "send".firstCharacterUpper,
          ).onlyPadding(bottom: 40.h),
        ],
      ),
    );
  }
}
