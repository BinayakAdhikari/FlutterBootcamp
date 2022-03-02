import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewHamburgerMenu extends StatefulWidget {
  const HomeViewHamburgerMenu({Key? key}) : super(key: key);

  @override
  _HomeViewHamburgerMenuState createState() => _HomeViewHamburgerMenuState();
}

class _HomeViewHamburgerMenuState extends State<HomeViewHamburgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: pureWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          12,
        ),
        child: SvgPicture.asset(
          "assets/icons/menu.svg",
        ),
      ),
    );
  }
}
