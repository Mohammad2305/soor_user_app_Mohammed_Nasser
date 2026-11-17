import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/home/home_screen.dart';
import 'package:soor_user_app/features/layout/presentation/ui/layouts/services/services_screen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    ServicesScreen(),
    Center(child: Text("bookings")),
    Center(child: Text("more")),
  ];

  void changeIndex(int index){
    selectedIndex = index;
    emit(ChangeIndex());
  }
}
