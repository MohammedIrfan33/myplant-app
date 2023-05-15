import 'package:flutter/material.dart';
import 'package:myplants/screens/HomeScreen/home_screen.dart';
import 'package:myplants/screens/auth/forget_password.dart';
import 'package:myplants/screens/auth/login_screen.dart';
import 'package:myplants/screens/auth/otp_confirmation_screen.dart';
import 'package:myplants/screens/auth/otp_verification_screen.dart';
import 'package:myplants/screens/auth/password_changed_screen.dart';
import 'package:myplants/screens/auth/reset_password.dart';
import 'package:myplants/screens/auth/signup_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('route name ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case LoginScreen.routeName:
        return LoginScreen.route();
      case ForgetetaPassword.routeName:
       return ForgetetaPassword.route();
      case ResetPassword.routeName:
       return ResetPassword.route();
      case PasswordChangedScreen.routeName:
        return PasswordChangedScreen.route();
      case SignUpScreen.routeName:
        return SignUpScreen.route();
      case OTPverificationScreen.routeName:
        return OTPverificationScreen.route();
      case OTPConfirmationScreen.routeName:
        return OTPConfirmationScreen.route();
      
      default:
       return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(
        settings:const RouteSettings(
          name: '/error',
        ),
        builder: (_) =>  Scaffold(
          appBar: AppBar(title: const Text('Error')),
        ));
  }
}
