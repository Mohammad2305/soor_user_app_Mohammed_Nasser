import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/services/widgets/orders_type.dart';
import 'package:soor_user_app/features/layout/presentation/ui/widgets/custom_app_bar.dart';
import '../../../../../../core/const/assets.dart';
import '../../../../../../core/const/colors.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: [
        CustomAppBar(appBarLabel: "services",),
        OrdersType(
          svgImage: AppAssets.single,
          gradientColors: [AppColors.sweetHoney, AppColors.superBrown],
          label: "Individual",
          onTap: () {},
        ),
        OrdersType(
          svgImage: AppAssets.group,
          gradientColors: [AppColors.primary, AppColors.hiddenSapphire],
          label: "Occasions",
          onTap: () {},
        ),
      ],
    );
  }
}
