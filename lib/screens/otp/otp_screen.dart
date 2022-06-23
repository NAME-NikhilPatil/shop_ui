import 'package:flutter/material.dart';
import 'package:shop_ui/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "OTP Verification",
          style: TextStyle(
            color: Color(0xffb6b6b6),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
