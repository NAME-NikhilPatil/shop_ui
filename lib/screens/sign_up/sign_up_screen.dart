import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Color(0xffb6b6b6),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
