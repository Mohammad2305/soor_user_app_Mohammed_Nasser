import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/register_screen/widgets/policy_check_box.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/widgets/custom_input.dart';
import '../../../../../../../core/widgets/password_input.dart';
import 'register_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> registerKey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController() ;
    TextEditingController name = TextEditingController() ;
    TextEditingController password = TextEditingController() ;
    TextEditingController mobile = TextEditingController() ;
    TextEditingController confirmPassword = TextEditingController() ;

    return Form(
      key: registerKey,
      child: Column(
        spacing: 16.h,
        children: [
          CustomInput(
            inputTitle: "phone number".firstCharacterUpper,
            inputController: mobile,
            hintText: "+966 000 000 00",
            keyboardType: TextInputType.number,
            validator: FormBuilderValidators.phoneNumber(),
          ),
          CustomInput(
            inputTitle: "email".firstCharacterUpper,
            inputController: email,
            hintText: "enter the email account",
            keyboardType: TextInputType.emailAddress,
            validator: FormBuilderValidators.email(),
          ),
          CustomInput(
            inputTitle: "name".firstCharacterUpper,
            inputController: name,
            hintText: "enter the name",
            validator: FormBuilderValidators.firstName(),
          ),
          PasswordInput(
            inputController: password,
            validator: FormBuilderValidators.password(),
          ),
          PasswordInput(
            inputTitle: "confirm",
            inputController: confirmPassword,
            validator: FormBuilderValidators.password(),
          ),
          PolicyCheckBox(),
          RegisterButton(phoneNumber: mobile.text, formKey: registerKey,),
        ],
      ),
    );
  }
}