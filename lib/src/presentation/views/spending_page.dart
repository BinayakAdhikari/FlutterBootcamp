import 'package:bankapp/config/appConfig.dart';
import 'package:bankapp/src/presentation/widgets/common/time_period_tabs.dart';
import 'package:bankapp/src/presentation/widgets/spendingView/spendingViewSinglePayment.dart';
import 'package:bankapp/src/presentation/widgets/spendingView/spendingViewSpendInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpendingPage extends StatefulWidget {
  static const String routeName = "/spendingPage";
  const SpendingPage({Key? key}) : super(key: key);

  @override
  _SpendingPageState createState() => _SpendingPageState();
}

class _SpendingPageState extends State<SpendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _spendingView(),
      ),
    );
  }

  _spendingView() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width / 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/back.svg",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 10,
                  ),
                ),
                const SpendingViewSpendInfo(),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 10,
                  ),
                ),
                const TimePeriodTabs(),
              ],
            ),
          ),
          Image.asset("assets/images/graph.png"),
          Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width / 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 20,
                    bottom: MediaQuery.of(context).size.width / 40,
                  ),
                  child: Text(
                    "Scheduled payments",
                    style: TextStyle(
                      fontSize:
                          AppConfig().themeData.textTheme.headline4!.fontSize,
                      fontWeight:
                          AppConfig().themeData.textTheme.headline4!.fontWeight,
                      color: darkPrimary,
                    ),
                  ),
                ),
                const Divider(
                  color: black40,
                ),
                const SpendingViewSinglePayment(
                  imagePath: "assets/icons/youtube.svg",
                  paymentName: "Youtube Red",
                  nextPayment: "Next payment: 12/02",
                  payment: 3.99,
                  backgroundColor: Color(0xFFFE5145),
                ),
                const Divider(
                  color: black40,
                ),
                const SpendingViewSinglePayment(
                  imagePath: "assets/icons/github.svg",
                  paymentName: "Github",
                  nextPayment: "Next payment: 12/02",
                  payment: 2.99,
                  backgroundColor: Color(0xFF13151B),
                ),
                const Divider(
                  color: black40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
