import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PercentageChangeText extends StatefulWidget {
  final int percentChange;
  const PercentageChangeText({Key? key, required this.percentChange})
      : super(key: key);

  @override
  _PercentageChangeTextState createState() => _PercentageChangeTextState();
}

class _PercentageChangeTextState extends State<PercentageChangeText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/price_drop_arrow.svg",
        ),
        const Padding(
          padding: EdgeInsets.only(right: 6),
        ),
        Text(
          widget.percentChange.toString(),
          style: TextStyle(
            fontSize: AppConfig().themeData.textTheme.headline6!.fontSize,
            fontWeight: AppConfig().themeData.textTheme.headline6!.fontWeight,
            color: good,
          ),
        )
      ],
    );
  }
}
