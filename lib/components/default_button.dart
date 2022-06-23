import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, this.text, this.press,
  }) : super(key: key);
  final String? text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        onPressed:press,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(kPrimaryColor),
          shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
