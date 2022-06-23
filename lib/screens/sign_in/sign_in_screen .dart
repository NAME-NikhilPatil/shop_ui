import 'package:flutter/material.dart';
import 'package:shop_ui/screens/sign_in/components/body.dart';
import '../../size_config.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign In",
          style: TextStyle(
            color: Color(0xff8B8B8B),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
