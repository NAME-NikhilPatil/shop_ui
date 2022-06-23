import 'package:flutter/material.dart';
import 'package:shop_ui/screens/complete_profie/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/complete_profile";

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
