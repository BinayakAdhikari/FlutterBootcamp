import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBalanceInfo extends StatelessWidget {
  const HomeViewBalanceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/cash.svg"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cashback",
                        style: AppConfig().themeData.textTheme.headline5,
                      ),
                      Text(
                        r"$220.54",
                        style: AppConfig().themeData.textTheme.headline3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const VerticalDivider(
            color: black40,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/deposit.svg"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Safe Deposit",
                        style: AppConfig().themeData.textTheme.headline5,
                      ),
                      Text(
                        r"$12,800.64",
                        style: AppConfig().themeData.textTheme.headline3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
