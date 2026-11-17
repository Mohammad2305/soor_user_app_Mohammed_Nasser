import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import '../../../../core/const/main_const.dart';

/// The initial screen shown to the user when the app starts.
/// It displays the brand logo, name, and a tagline as specified in PROJECT.md.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool isLogged;

  @override
  void initState() {
    isLogged = false;
    super.initState();
    _navigateToOnboarding();
  }

  /// Handles the transition to the onboarding screen after a brief delay.
  Future<void> _navigateToOnboarding() async {
    await Future.delayed(Duration(seconds: MainAppConst.delaySplash));
    setState(() {
      isLogged = !isLogged;
    });
    if (mounted) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        !isLogged
            ? AppRoutes.signIn
            : AppRoutes.layout,
            (_) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SvgPicture.asset(AppAssets.logo)));
  }
}
