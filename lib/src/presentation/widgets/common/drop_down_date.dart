import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DropDownDate extends StatefulWidget {
  final String currentIndexString;
  const DropDownDate({Key? key, required this.currentIndexString})
      : super(key: key);

  @override
  _DropDownDateState createState() => _DropDownDateState();
}

class _DropDownDateState extends State<DropDownDate> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.currentIndexString,
          style: TextStyle(
            fontSize: AppConfig().themeData.textTheme.headline4!.fontSize,
            fontWeight: AppConfig().themeData.textTheme.headline4!.fontWeight,
            color: darkPrimary,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            right: 12,
          ),
        ),
        SvgPicture.asset("assets/icons/down_arrow.svg"),
      ],
    );
  }
}
