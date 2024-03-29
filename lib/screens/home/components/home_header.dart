import 'package:flutter/material.dart';
import 'package:shop_ui/screens/home/components/search_field.dart';
import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: (){},
          ),
           IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            press: (){},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}

