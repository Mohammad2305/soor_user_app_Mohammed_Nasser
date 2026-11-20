import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/features/layout/presentation/ui/widgets/custom_app_bar.dart';
import '../../../../../../core/extensions/paddings.dart';
import '../services/widgets/order.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List orders = [
      {
        "orderState": "finish",
        "startClock": "08:00 PM",
        "endClock": "11:00 PM",
        "cost": 1600.0,
      },
      {
        "orderState": "accepted",
        "startClock": "08:00 PM",
        "endClock": "11:00 PM",
        "cost": 1600.0,
      },
      {
        "orderState": "arrived",
        "startClock": "08:00 PM",
        "endClock": "11:00 PM",
        "cost": 1600.0,
      },
      {
        "orderState": "on review",
        "startClock": "08:00 PM",
        "endClock": "11:00 PM",
        "cost": 1600.0,
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: [
        CustomAppBar(appBarLabel: "bookings",),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: orders.length,
          itemBuilder: (context, index) {
            return Order(
              orderState: orders[index]["orderState"],
              startClock: orders[index]["startClock"],
              endClock: orders[index]["endClock"],
              cost: orders[index]["cost"],
            ).onlyPadding(bottom: 8.h);
          }
        ).symmetricPadding(horizontal: 15.w),
      ],
    );
  }
}
