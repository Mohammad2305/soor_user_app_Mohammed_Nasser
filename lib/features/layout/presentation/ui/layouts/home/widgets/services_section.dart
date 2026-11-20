import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import 'package:soor_user_app/features/layout/presentation/manager/layout_cubit.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/home/widgets/gradient_circle.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/paddings.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/widgets/custom_button.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("services", style: AppTextStyles.textFtS16FW400),
            CustomButton(
              onTap: () {
                context.read<LayoutCubit>().changeIndex(1);
              },
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
              diameter: 104,
            ),
            GradientCircle(
              svgImage: AppAssets.group,
              gradientColors: [AppColors.primary, AppColors.hiddenSapphire],
              label: "Occasions",
              diameter: 104,
            ),
          ],
        ),
      ],
    ).symmetricPadding(horizontal: 15);
  }
}
