import 'package:bankapp/config/appConfig.dart';
import 'package:bankapp/src/presentation/widgets/common/percentage_change_text.dart';
import 'package:flutter/material.dart';

class SpendingViewSpendInfo extends StatelessWidget {
  const SpendingViewSpendInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Spendings",
          style: TextStyle(
            fontSize: AppConfig().themeData.textTheme.headline4!.fontSize,
            fontWeight: AppConfig().themeData.textTheme.headline4!.fontWeight,
            color: black70,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 9,
          ),
        ),
        Row(
          children: [
            Text(
              r"$2,400.56",
              style: AppConfig().themeData.textTheme.headline2,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / 20,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PercentageChangeText(percentChange: 12),
                Text(
                  "vs past month",
                  style: AppConfig().themeData.textTheme.headline5,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
