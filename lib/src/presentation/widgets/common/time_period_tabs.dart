import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';

class TimePeriodTabs extends StatefulWidget {
  const TimePeriodTabs({Key? key}) : super(key: key);

  @override
  _TimePeriodTabsState createState() => _TimePeriodTabsState();
}

class _TimePeriodTabsState extends State<TimePeriodTabs> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _timePeriod(
          name: "Day",
          selected: true,
        ),
        _timePeriod(
          name: "Week",
        ),
        _timePeriod(
          name: 'Month',
        ),
        _timePeriod(
          name: "Custom",
        ),
      ],
    );
  }

  _timePeriod({required String name, bool selected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          24,
        ),
        color: selected ? primary : null,
      ),
      child: Text(
        name,
        style: TextStyle(
            fontSize: AppConfig().themeData.textTheme.headline6!.fontSize,
            fontWeight: AppConfig().themeData.textTheme.headline6!.fontWeight,
            color: selected ? pureWhite : black40),
      ),
    );
  }
}
