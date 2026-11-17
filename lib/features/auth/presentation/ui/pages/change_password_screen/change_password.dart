import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/change_password_screen/widgets/change_password_form.dart';
import '../../../../../../core/const/assets.dart';
import '../../../../../../core/extensions/main_app.dart';
import '../../../../../../core/extensions/strings.dart';
import '../../widgets/verification_app_bar.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
              "reset password".firstCharacterUpper,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ChangePasswordForm(),
          ],
        ),
      ).scrolling,
    );
  }
}
