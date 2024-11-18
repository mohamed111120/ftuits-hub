import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/views/login_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/on_boarding_view.dart';

import '../../features/splash/presentation/views/spalsh_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
