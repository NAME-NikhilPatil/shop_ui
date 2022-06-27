import 'package:flutter/widgets.dart';
import 'package:shop_ui/screens/complete_profie/complete_profile_screen.dart';
import 'package:shop_ui/screens/forgotPassword/forgot_password_screen.dart';
import 'package:shop_ui/screens/login_success/login_succes_screen.dart';
import 'package:shop_ui/screens/otp/otp_screen.dart';
import 'package:shop_ui/screens/sign_in/sign_in_screen.dart';
import 'package:shop_ui/screens/sign_up/sign_up_screen.dart';
// import 'package:shop_ui/screens/cart/cart_screen.dart';
// import 'package:shop_ui/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_ui/screens/details/details_screen.dart';
// import 'package:shop_ui/screens/forgot_password/forgot_password_screen.dart';
// import 'package:shop_ui/screens/home/home_screen.dart';
// import 'package:shop_ui/screens/login_success/login_success_screen.dart';
// import 'package:shop_ui/screens/otp/otp_screen.dart';
// import 'package:shop_ui/screens/profile/profile_screen.dart';
// import 'package:shop_ui/screens/sign_in/sign_in_screen.dart';
// import 'package:shop_ui/screens/sign_up/sign_up_screen.dart';
import 'package:shop_ui/screens/splash/splash_screen.dart';
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) =>const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) =>const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
