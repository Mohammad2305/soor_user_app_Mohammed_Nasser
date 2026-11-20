import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/extensions/strings.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/services/widgets/order.dart';

class CurrentBookingSection extends StatelessWidget {
  const CurrentBookingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "current booking".firstCharacterUpper,
          style: AppTextStyles.textFtS16FW400,
        ),
        Order(
          orderState: "finish",
          startClock: "08:00 PM",
          endClock: "11:00 PM",
          cost: 1600,
        ),
      ],
    ).symmetricPadding(horizontal: 15.w);
  }
}
