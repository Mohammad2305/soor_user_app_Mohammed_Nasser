import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../manager/register/register_cubit.dart';

class CheckBoxBlocBuilder extends StatelessWidget {
  const CheckBoxBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return CheckboxListTile(
          activeColor: Color(0xff2D9EC4),
          checkboxScaleFactor: 1.5,
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              Text(
                "Agree service terms and ",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {},
                child: Text(
                  "privacy policy",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.mainColor,
                  ),
                ),
              ),
            ],
          ),
          value: context.read<RegisterCubit>().agreementPolicy,
          onChanged: (val) {
            context.read<RegisterCubit>().toggleCheckBox(val!);
          },
        );
      },
    );
  }
}
