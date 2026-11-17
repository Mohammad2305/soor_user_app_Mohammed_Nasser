import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/const/assets.dart';
import '../../../../../../core/extensions/main_app.dart';
import '../../../../../../core/extensions/strings.dart';
import '../../widgets/verification_app_bar.dart';
import 'widgets/forget_password_form.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VerificationAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        child: Column(
          spacing: 24.h,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.logo),
            Text(
              "did you forget password?".firstCharacterUpper,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ForgetPasswordForm(),
          ],
        ),
      ).scrolling,
    );
  }
}
