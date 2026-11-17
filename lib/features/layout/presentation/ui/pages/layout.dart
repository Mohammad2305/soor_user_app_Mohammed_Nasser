import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/const/colors.dart';
import 'package:soor_user_app/core/extensions/main_app.dart';
import 'package:soor_user_app/features/layout/presentation/manager/layout_cubit.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return Scaffold(
          body: context
              .read<LayoutCubit>()
              .screens[context.read<LayoutCubit>().selectedIndex].scrolling,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.read<LayoutCubit>().selectedIndex,
            onTap: (index) {
              context.read<LayoutCubit>().changeIndex(index);
            },
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.electric_bolt),
                label: "services",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.date_range),
                label: "bookings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: "more",
              ),
            ],
          ),
        );
      },
    );
  }
}
