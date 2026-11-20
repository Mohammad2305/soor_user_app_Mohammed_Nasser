import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import '../../../../../../../core/themes/app_boxes_decoration.dart';

class GradientCircle extends StatelessWidget {
  final String svgImage;
  final List<Color> gradientColors;
  final String? label;
  final double diameter;
  final double? iconSize;
  const GradientCircle({super.key, required this.svgImage, required this.gradientColors, this.label, required this.diameter, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration.general(gradientColors[0], 52.r)
          .copyWith(
        gradient: LinearGradient(
          transform: GradientRotation(90),
          colors: gradientColors,
        ),
      ),
      width: diameter.w,
      height: diameter.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgImage, width: iconSize??20.w,),
          label==null ? SizedBox.shrink() : Text(label!, style: AppTextStyles.textFtS16FW400),
        ],
      ),
    );
  }
}
