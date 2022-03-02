import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';

class CircularScrollIndicator extends StatefulWidget {
  final int dotCounts;
  const CircularScrollIndicator({Key? key, this.dotCounts = 3})
      : super(key: key);

  @override
  _CircularScrollIndicatorState createState() =>
      _CircularScrollIndicatorState();
}

class _CircularScrollIndicatorState extends State<CircularScrollIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      width: 12 * (widget.dotCounts * 2 - 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _singleDot(selected: true),
          _singleDot(),
          _singleDot(),
        ],
      ),
    );
  }

  Container _singleDot({bool selected = false}) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: selected ? highlight : pureWhite30,
        shape: BoxShape.circle,
      ),
    );
  }
}
