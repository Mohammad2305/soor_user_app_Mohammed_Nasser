import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/const/colors.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../../core/widgets/custom_button.dart';

class Order extends StatelessWidget {
  final String orderState;
  final String startClock;
  final String endClock;
  final double cost;

  const Order({
    super.key,
    required this.orderState,
    required this.startClock,
    required this.endClock,
    required this.cost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration.general(AppColors.appBarColor, 12.r),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 18.w),
      child: Column(
        spacing: 8.h,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("#12336455", style: AppTextStyles.textFtS14FW500),
              Container(
                decoration: AppBoxDecoration.general(AppColors.stateColor[orderState]!, 12.r),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                width: 85.w,
                alignment: Alignment.center,
                child: Text(
                  orderState.firstCharacterUpper,
                  style: AppTextStyles.textFtS14FW500,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${cost.toInt()} Riyals",
                style: AppTextStyles.textFtS16FW400.copyWith(
                  color: AppColors.mainColor,
                ),
              ),
              Text(
                "today $startClock to $endClock".firstCharacterUpper,
                style: AppTextStyles.textFtS14FW500.copyWith(
                  color: AppColors.greyDark,
                ),
              ),
            ],
          ),
          orderState == "finish"
              ? CustomButton(
                  onTap: () {},
                  decoration: AppBoxDecoration.general(
                    Colors.transparent,
                    12.r,
                  ),
                  width: 93.w,
                  icon: Icon(Icons.arrow_forward_ios),
                  textStyle: AppTextStyles.textFtS14FW500,
                  label: "add stars".firstCharacterUpper,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
