import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/register_screen/widgets/check_box_bloc_builder.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/widgets/custom_input.dart';
import '../../../../../../../core/widgets/password_input.dart';
import '../../../../manager/register/register_cubit.dart';
import 'register_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 16.h,
        children: [
          CustomInput(
            inputTitle: "phone number".firstCharacterUpper,
            inputController: context.read<RegisterCubit>().mobile,
            hintText: "+966 000 000 00",
            keyboardType: TextInputType.number,
            validator: FormBuilderValidators.phoneNumber(),
          ),
          CustomInput(
            inputTitle: "email".firstCharacterUpper,
            inputController: context.read<RegisterCubit>().email,
            hintText: "enter the email account",
            keyboardType: TextInputType.emailAddress,
            validator: FormBuilderValidators.email(),
          ),
          CustomInput(
            inputTitle: "name".firstCharacterUpper,
            inputController: context.read<RegisterCubit>().name,
            hintText: "enter the name",
            validator: FormBuilderValidators.username(),
          ),
          PasswordInput(
            inputController: context.read<RegisterCubit>().password,
            validator: FormBuilderValidators.password(),
          ),
          PasswordInput(
            inputTitle: "confirm",
            inputController: context.read<RegisterCubit>().confirmPassword,
            validator: FormBuilderValidators.password(),
          ),
          CheckBoxBlocBuilder(),
          RegisterButton(),
        ],
      ),
    );
  }
}