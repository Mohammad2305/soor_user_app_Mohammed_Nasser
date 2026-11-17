import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/const/colors.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';

class LayoutAppbar extends StatelessWidget {
  const LayoutAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58.h,
      color: AppColors.appBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppAssets.logo).symmetricPadding(horizontal: 10.w),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.surface,
              child: Icon(
                Icons.notifications,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
