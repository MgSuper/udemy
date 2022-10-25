import 'package:flutter/material.dart';
import 'package:udemy/presentation/forgot_password/forgot_password.dart';
import 'package:udemy/presentation/login/login.dart';
import 'package:udemy/presentation/main/main.dart';
import 'package:udemy/presentation/onboarding/onboarding.dart';
import 'package:udemy/presentation/register/register.dart';
import 'package:udemy/presentation/resources/string_manager.dart';
import 'package:udemy/presentation/splash/splash.dart';
import 'package:udemy/presentation/store_details/store_details.dart';

class Routes {
  static const splashRoute = '/';
  static const onBoardingRoute = '/onboarding';
  static const loginRoute = '/login';
  static const registerRoute = '/register';
  static const mainRoute = '/main';
  static const forgotPassowrdRoute = '/forgotPassword';
  static const storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case Routes.forgotPassowrdRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppString.noRouteFound),
        ),
        body: Center(
          child: Text(AppString.noRouteFound),
        ),
      ),
    );
  }
}
