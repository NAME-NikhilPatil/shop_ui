import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              const CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              const Text(
                "By continuing you confirm that you agree\n with our Terms and Conditions",
                textAlign: TextAlign.center,
              ),
               SizedBox(
                height: getProportionateScreenHeight(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
