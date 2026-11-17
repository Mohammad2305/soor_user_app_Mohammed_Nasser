import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/const/colors.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/themes/app_boxes_decoration.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import 'package:soor_user_app/core/widgets/custom_button.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("50% off", style: AppTextStyles.textFtS24FW700),
        Text("your first booking", style: AppTextStyles.textFtS24FW700),
        CustomButton(
          onTap: () {},
          decoration: AppBoxDecoration.general(AppColors.primary, 8.r),
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
          width: 120.w,
          label: "book now",
          textStyle: AppTextStyles.textFtS14FW500,
          icon: Icon(Icons.arrow_forward),
        ).onlyPadding(top: 14.h),
      ],
    );
  }
}
