import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/extensions/strings.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/services/widgets/orders_type.dart';
import 'package:soor_user_app/features/layout/presentation/ui/widgets/custom_app_bar.dart';
import '../../../../../../core/const/colors.dart';
import '../../../../../../core/extensions/paddings.dart';
import '../../../../../../core/themes/app_boxes_decoration.dart';
import '../home/widgets/gradient_circle.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: [
        CustomAppBar(appBarLabel: "more"),
        Container(
          decoration: AppBoxDecoration.general(AppColors.hiddenSapphire, 12.r),
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 18.w),
          child: Row(
            spacing: 8.w,
            children: [
              GradientCircle(
                svgImage: AppAssets.single,
                gradientColors: [?Colors.blueGrey[700], ?Colors.blueGrey[700]],
                diameter: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "user name".capitalizeEveryWord,
                    style: AppTextStyles.textFtS14FW500,
                  ),
                  Text(
                    "+9054545656",
                    style: AppTextStyles.textFtS14FW500.copyWith(
                      color: AppColors.greyDark,
                    ),
                  ),
                ],
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            ],
          ),
        ).symmetricPadding(horizontal: 15.w),
      ],
    );
  }
}
