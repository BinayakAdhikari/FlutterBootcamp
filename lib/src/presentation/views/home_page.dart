import 'package:bankapp/config/appConfig.dart';
import 'package:bankapp/src/presentation/widgets/common/drop_down_date.dart';
import 'package:bankapp/src/presentation/widgets/home_view_widgets/home_view_balance_info.dart';

import 'package:bankapp/src/presentation/widgets/home_view_widgets/home_view_hamburger_menu.dart';
import 'package:bankapp/src/presentation/widgets/home_view_widgets/home_view_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _homeView(),
    );
  }

  Widget _homeView() {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/info_landing_background.png"),
            ),
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 20,
                        left: MediaQuery.of(context).size.width / 20,
                        bottom: MediaQuery.of(context).size.width / 10,
                      ),
                      child: const HomeViewHamburgerMenu(),
                    ),
                    Expanded(
                      child: _homeViewBody(),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width / 5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: pureWhite,
                  boxShadow: [
                    BoxShadow(
                      color: shadow,
                      offset: Offset(
                        0,
                        4,
                      ),
                      blurRadius: 24,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset("assets/icons/credit-card.svg"),
                      SvgPicture.asset("assets/icons/bell.svg"),
                      SvgPicture.asset("assets/icons/message.svg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _homeViewBody() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 6.4,
          ),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 6.4 +
                MediaQuery.of(context).size.width / 10,
            left: MediaQuery.of(context).size.width / 20,
            right: MediaQuery.of(context).size.width / 20,
          ),
          color: pureWhite,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const HomeViewBalanceInfo(),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 10,
                ),
              ),
              const DropDownDate(currentIndexString: "Today"),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 40,
                ),
              ),
              const Divider(
                color: black40,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stream Store",
                    style: AppConfig().themeData.textTheme.headline6,
                  ),
                  Text(
                    r"-$19.99",
                    style: TextStyle(
                      fontSize:
                          AppConfig().themeData.textTheme.headline6!.fontSize,
                      fontWeight: FontWeight.w700,
                      color: warning,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        HomeViewProfileCard(
          horizontalPads: MediaQuery.of(context).size.width / 20,
          cardHeight: MediaQuery.of(context).size.height / 3.2,
        ),
      ],
    );
  }
}
