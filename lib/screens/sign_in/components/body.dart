import 'package:flutter/material.dart';
import 'package:shop_ui/screens/sign_in/components/signForm.dart';
import 'package:shop_ui/size_config.dart';
import '../../../components/no_account_text.dart';
import '../../../components/socal_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                const SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
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
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                const NoAccount(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
