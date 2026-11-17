import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soor_user_app/features/layout/presentation/manager/layout_cubit.dart';
import '../../features/auth/presentation/ui/pages/change_password_screen/change_password.dart';
import '../../features/auth/presentation/ui/pages/forget_password_screen/forget_password.dart';
import '../../features/auth/presentation/ui/pages/phone_verification_screen/phone_verification_screen.dart';
import '../../features/auth/presentation/ui/pages/register_screen/register_screen.dart';
import '../../features/auth/presentation/ui/pages/sign_in-screen/sign_in.dart';
import '../../features/auth/presentation/ui/pages/successful_screen/success.dart';
import '../../features/layout/presentation/ui/pages/layout.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import 'routes.dart';

class RouteNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (context) => SignIn());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (context) => Register());
      case AppRoutes.phoneCheck:
        final direction = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => PhoneVerification(
            phoneNumber: direction["mobile"],
            screenName: direction["screenName"],
          ),
        );
      case AppRoutes.success:
        final successText = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => Success(successText: successText),
        );
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (context) => const ForgetPassword());
      case AppRoutes.changePassword:
        return MaterialPageRoute(builder: (context) => const ChangePassword());
      case AppRoutes.layout:
        return MaterialPageRoute(
          builder: (context) =>
              BlocProvider(create: (context) => LayoutCubit(), child: Layout()),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
