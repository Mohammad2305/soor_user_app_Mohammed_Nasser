import 'dart:ui';

class AppColors{
  // main colors
  static final mainColor = Color(0xffc89100) ;
  static final sweetHoney = Color(0xffe1801e);
  static final superBrown = Color(0xff61370D);
  static final secondaryDark400 = Color(0xff9E6A00);
  static final avatarColor = Color(0xff212121) ;
  static final appBarColor = Color(0xff141414) ;
  static final primary = Color(0xff007AA2);
  static final hiddenSapphire = Color(0xff00394C);
  static final greyDark = Color(0xff787878);

  static final Map<String, Color> stateColor = {
    "on review": mainColor,
    "accepted": hiddenSapphire,
    "arrived": Color(0xffdc6803),
    "finish": Color(0xff039855)
  };
}