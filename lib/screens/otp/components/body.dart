import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We send your code to +91 9435343434"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("This code expired in "),
                  buildTimer(),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend OTP code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TweenAnimationBuilder<num> buildTimer() {
    return TweenAnimationBuilder(
      tween: Tween(begin: 30, end: 0),
      duration: const Duration(seconds: 30),
      builder: (context, value, child) => Text(
        "00:${value.toInt()}",
        style: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
      onEnd: () {},
    );
  }
}
