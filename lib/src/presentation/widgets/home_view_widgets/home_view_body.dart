import 'package:bankapp/config/appConfig.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pureWhite30,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [],
      ),
    );
  }
}
