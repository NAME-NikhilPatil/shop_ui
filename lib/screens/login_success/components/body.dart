import 'package:flutter/material.dart';
import 'package:shop_ui/components/default_button.dart';
import 'package:shop_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
          width: double.infinity,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          "Login Succes",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth*0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {},
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
