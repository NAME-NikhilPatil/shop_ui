import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/screens/sign_up/components/sign_up_form.dart';
import 'package:shop_ui/size_config.dart';
import '../../../components/socal_card.dart';

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
              SizedBox(height: SizeConfig.screenHeight*0.02,),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              const Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              const SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    image: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    image: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    image: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              const Text(
                "By continuing you confirm that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
