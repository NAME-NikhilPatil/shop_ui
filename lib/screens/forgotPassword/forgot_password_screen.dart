import 'package:flutter/material.dart';
import 'package:shop_ui/screens/forgotPassword/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Forgot Password",
          style: TextStyle(
            color: Color(0xff8b8b8b),
          ),
        ),
        
      ),
      body: const Body(),
    );
  }
}
