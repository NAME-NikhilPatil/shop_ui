import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2focusNode;
  late FocusNode pin3focusNode;
  late FocusNode pin4focusNode;

  @override
  void initState() {
    super.initState();
    pin2focusNode = FocusNode();
    pin3focusNode = FocusNode();
    pin4focusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2focusNode.dispose();
    pin3focusNode.dispose();
    pin4focusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2focusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3focusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4focusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    pin4focusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          DefaultButton(
            text: "continue",
            press: () {
              // if(_)
            },
          ),
        ],
      ),
    );
  }
}
