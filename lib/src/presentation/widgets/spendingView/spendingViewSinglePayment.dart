import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpendingViewSinglePayment extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final String paymentName;
  final String nextPayment;
  final double payment;
  const SpendingViewSinglePayment(
      {Key? key,
      required this.imagePath,
      required this.paymentName,
      required this.nextPayment,
      required this.payment,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 6,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.width / 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 6,
                width: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: SvgPicture.asset(
                  imagePath,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  top: MediaQuery.of(context).size.width / 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      paymentName,
                      style: TextStyle(
                        fontSize:
                            AppConfig().themeData.textTheme.headline4!.fontSize,
                        fontWeight: AppConfig()
                            .themeData
                            .textTheme
                            .headline5!
                            .fontWeight,
                        color: black,
                      ),
                    ),
                    Text(
                      nextPayment,
                      style: AppConfig().themeData.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "\$${payment.toString()}/mth",
              style: TextStyle(
                fontSize: AppConfig().themeData.textTheme.headline4!.fontSize,
                fontWeight:
                    AppConfig().themeData.textTheme.headline4!.fontWeight,
                color: black70,
              ),
            ),
          )
        ],
      ),
    );
  }
}
