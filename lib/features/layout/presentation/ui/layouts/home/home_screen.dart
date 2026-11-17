import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/home/widgets/gradient_circle.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/home/widgets/offer_section.dart';
import '../../../../../../core/const/colors.dart';
import '../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: [
        OfferSection(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("services", style: AppTextStyles.textFtS16FW400),
            CustomButton(
              onTap: () {},
              decoration: AppBoxDecoration.general(Colors.transparent, 8.r),
              label: "more",
              textStyle: AppTextStyles.textFtS14FW500.copyWith(
                color: AppColors.mainColor,
              ),
              icon: Icon(Icons.arrow_forward_ios, color: AppColors.mainColor),
            ),
          ],
        ),
        Row(
          spacing: 16.w,
          children: [
            GradientCircle(
              svgImage: AppAssets.single,
              gradientColors: [AppColors.sweetHoney, AppColors.superBrown],
              label: "Individual",
            ),
            GradientCircle(
              svgImage: AppAssets.group,
              gradientColors: [AppColors.primary, AppColors.hiddenSapphire],
              label: "Occasions",
            ),
          ],
        ),
      ],
    );
  }
}
