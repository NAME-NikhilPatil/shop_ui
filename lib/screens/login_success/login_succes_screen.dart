import 'package:flutter/material.dart';
import 'package:shop_ui/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Login Success",
            style: TextStyle(
              color: Color(0xff8b8b8b),
            ),
          ),
        ),
        body: const Body());
  }
}
