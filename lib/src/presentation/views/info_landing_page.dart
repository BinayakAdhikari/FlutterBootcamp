import 'package:bankapp/config/appConfig.dart';
import 'package:bankapp/src/presentation/widgets/common/circular_scroll_indicator.dart';
import 'package:bankapp/src/presentation/widgets/info_landing_page_widgets/info_lading_view_start_button.dart';
import 'package:flutter/material.dart';

class InfoLandingPage extends StatefulWidget {
  const InfoLandingPage({Key? key}) : super(key: key);

  @override
  _InfoLandingPageState createState() => _InfoLandingPageState();
}

class _InfoLandingPageState extends State<InfoLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _infoLandingView(),
    );
  }

  Widget _infoLandingView() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.width / 10,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/info_landing_background.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Smart Savings",
            style: AppConfig().themeData.textTheme.headline1,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircularScrollIndicator(),
              InfoLandingViewStartButton(),
            ],
          )
        ],
      ),
    );
  }
}
