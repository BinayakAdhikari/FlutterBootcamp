import 'package:bankapp/config/appConfig.dart';
import 'package:bankapp/src/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoLandingViewStartButton extends StatelessWidget {
  const InfoLandingViewStartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          HomePage.routeName,
        );
      },
      child: Row(
        children: [
          Text(
            "Start Now",
            style: TextStyle(
              fontSize: AppConfig().themeData.textTheme.headline4!.fontSize,
              fontWeight: AppConfig().themeData.textTheme.headline4!.fontWeight,
              color: pureWhite,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 4,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/arrow-right.svg",
          ),
        ],
      ),
    );
  }
}
