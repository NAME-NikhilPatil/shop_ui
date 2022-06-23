import 'package:flutter/material.dart';
import 'package:shop_ui/components/default_button.dart';
import 'package:shop_ui/components/form_error.dart';
import 'package:shop_ui/components/no_account_text.dart';
import 'package:shop_ui/size_config.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  List<String> errors = [];
  final _formKey=GlobalKey<FormState>();
  late String email;
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newvalue) => email = newvalue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration:InputDecoration(
              border: outlineInputBorder(),
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: const CustomSuffixIcon(
                svgIcon: "assets/icons/Mail.svg",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(
            errors: errors,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState!.validate()){

              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          const NoAccount(),
        ],
      ),
    );
  }
}
