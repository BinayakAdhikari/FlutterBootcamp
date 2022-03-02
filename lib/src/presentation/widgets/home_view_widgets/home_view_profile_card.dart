import 'package:bankapp/config/appConfig.dart';
import 'package:bankapp/src/presentation/views/spending_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewProfileCard extends StatelessWidget {
  final double horizontalPads;
  final double cardHeight;

  const HomeViewProfileCard(
      {Key? key, required this.horizontalPads, required this.cardHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SpendingPage.routeName,
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPads),
        child: SizedBox(
          height: cardHeight,
          width: double.maxFinite,
          child: Stack(
            children: [
              _card(),
              Column(
                children: [
                  _profileBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPads,
                      vertical: horizontalPads / 2,
                    ),
                    child: const Divider(
                      color: black40,
                    ),
                  ),
                  Expanded(
                    child: _balanceInfo(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _profileBar() {
    return SizedBox(
      height: cardHeight / 2.8,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPads,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth / 5,
                  height: cardHeight / 2.8,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: shadow,
                        offset: Offset(0, 8),
                        blurRadius: 24,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/images/profile_1.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                    child: Padding(
                  padding: EdgeInsets.only(
                    left: horizontalPads / 2,
                    bottom: horizontalPads / 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Josuke Jotaro",
                        style: AppConfig().themeData.textTheme.headline4,
                      ),
                      Text(
                        "@jojojotaro",
                        style: AppConfig().themeData.textTheme.headline5,
                      ),
                    ],
                  ),
                ))
              ],
            ),
          );
        },
      ),
    );
  }

  _card() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: cardHeight - horizontalPads,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: pureWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: shadow,
              offset: Offset(0, 8),
              blurRadius: 24,
            )
          ],
        ),
      ),
    );
  }

  _balanceInfo() {
    return Padding(
      padding: EdgeInsets.only(
        left: horizontalPads,
        right: horizontalPads,
        bottom: horizontalPads / 2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available Balance",
                    style: AppConfig().themeData.textTheme.headline5,
                  ),
                  SvgPicture.asset("assets/icons/visa_logo.svg")
                ],
              ),
              Text(
                r"$12, 496.00",
                style: AppConfig().themeData.textTheme.headline2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "****",
                style: AppConfig().themeData.textTheme.headline3,
              ),
              Text(
                "****",
                style: AppConfig().themeData.textTheme.headline3,
              ),
              Text(
                "****",
                style: AppConfig().themeData.textTheme.headline3,
              ),
              Text(
                "2077",
                style: AppConfig().themeData.textTheme.headline3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
