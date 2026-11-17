import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/const/colors.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';

class ServicesAppBar extends StatelessWidget {
  const ServicesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 58.h,
      color: AppColors.appBarColor,
      child: Text(
        "services",
        style: AppTextStyles.textFtS16FW400,
      ),
    );
  }
}
