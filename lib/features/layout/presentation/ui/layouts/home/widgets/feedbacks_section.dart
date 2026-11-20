import 'package:easy_stars/easy_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/const/colors.dart';
import '../../../../../../../core/extensions/paddings.dart';
import '../../../../../../../core/extensions/strings.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../../../core/themes/app_text_styles.dart';

class FeedbacksSection extends StatelessWidget {
  const FeedbacksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "feedbacks".firstCharacterUpper,
          style: AppTextStyles.textFtS16FW400,
        ),
        ListView.builder(
          itemCount: 3,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              decoration: AppBoxDecoration.general(AppColors.appBarColor, 12.r),
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 18.w),
              child: Column(
                spacing: 8.h,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "user name".capitalizeEveryWord,
                        style: AppTextStyles.textFtS14FW500,
                      ),
                      EasyStarsRating(
                        initialRating: 0,
                        spacing: 2.w,
                        starSize: 20.sp,
                        filledColor: AppColors.mainColor,
                      ),
                    ],
                  ),
                  Text(
                    "Excellent service with adherence to schedules."
                        .firstCharacterUpper,
                    style: AppTextStyles.textFtS14FW500.copyWith(
                      color: Color(0xff787878),
                    ),
                  ),
                ],
              ),
            ).onlyPadding(bottom: 8.h);
          },
        ),
      ],
    ).symmetricPadding(horizontal: 15.w);
  }
}
