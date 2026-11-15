import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/data/repo/auth_repo_impl.dart';
import '../../features/auth/presentation/manager/register/register_cubit.dart';
import '../../features/auth/presentation/ui/pages/change_password.dart';
import '../../features/auth/presentation/ui/pages/forget_password.dart';
import '../../features/auth/presentation/ui/pages/phone_verification_screen/phone_verification_screen.dart';
import '../../features/auth/presentation/ui/pages/register_screen/register_screen.dart';
import '../../features/auth/presentation/ui/pages/sign_in.dart';
import '../../features/auth/presentation/ui/pages/success.dart';
import '../../features/layout/presentation/ui/pages/layout.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import 'routes.dart';

class RouteNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (context) => const SignIn());
      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => RegisterCubit(authRepo: AuthRepoImpl()),
            child: Register(),
          ),
        );
      case AppRoutes.phoneCheck:
        final mobile = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => PhoneVerification(phoneNumber: mobile,),
        );
      case AppRoutes.verificationSuccess:
        return MaterialPageRoute(builder: (context) => const Success());
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (context) => const ForgetPassword());
      case AppRoutes.changePassword:
        return MaterialPageRoute(builder: (context) => const ChangePassword());
      case AppRoutes.layout:
        return MaterialPageRoute(builder: (context) => const Layout());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
