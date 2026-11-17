import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/home/widgets/offer_section.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/home/widgets/services_section.dart';
import 'widgets/layout_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: [
        LayoutAppbar(),
        OfferSection(),
        ServicesSection()
      ],
    );
  }
}
