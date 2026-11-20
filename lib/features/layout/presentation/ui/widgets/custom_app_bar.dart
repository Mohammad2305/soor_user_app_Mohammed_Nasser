import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/const/colors.dart';
import 'package:soor_user_app/core/extensions/strings.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarLabel;
  const CustomAppBar({super.key, required this.appBarLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 58.h,
      color: AppColors.appBarColor,
      child: Text(
        appBarLabel.firstCharacterUpper,
        style: AppTextStyles.textFtS16FW400,
      ),
    );
  }
}
