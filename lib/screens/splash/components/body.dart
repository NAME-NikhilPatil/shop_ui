import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/screens/splash/components/splash_content.dart';
import 'package:shop_ui/size_config.dart';
import '../../../components/default_button.dart';
import '../../sign_in/sign_in_screen .dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context,SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(
        right: getProportionateScreenWidth(5),
      ),
      height: getProportionateScreenHeight(6),
      width: currentPage == index
          ? getProportionateScreenWidth(20)
          : getProportionateScreenWidth(6),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(3),
        ),
      ),
      duration: kAnimationDuration,
    );
  }
}
