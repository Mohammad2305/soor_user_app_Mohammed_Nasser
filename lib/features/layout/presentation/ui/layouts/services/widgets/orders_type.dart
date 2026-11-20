import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/const/assets.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/paddings.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../home/widgets/gradient_circle.dart';

class OrdersType extends StatelessWidget {
  final String svgImage;
  final List<Color> gradientColors;
  final String label;
  final void Function() onTap;
  const OrdersType({super.key, required this.svgImage, required this.gradientColors, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppBoxDecoration.general(AppColors.appBarColor, 12.r),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 18.w),
      child: Column(
        spacing: 8.h,
        children: [
          GradientCircle(
            svgImage: svgImage,
            gradientColors: gradientColors,
            diameter: 64,
            iconSize: 32,
          ),
          Text(label, style: AppTextStyles.textFtS16FW400),
          Text(
            "service description here".firstCharacterUpper,
            style: AppTextStyles.textFtS14FW500.copyWith(
              color: AppColors.greyDark,
            ),
          ),
          CustomButton(
            onTap: onTap,
            decoration: AppBoxDecoration.general(
              AppColors.secondaryDark400,
              8.r,
            ),
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
            label: "start now".firstCharacterUpper,
            textStyle: AppTextStyles.textFtS14FW500,
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    ).symmetricPadding(horizontal: 15.w).onlyPadding(bottom: 8.h);
  }
}
