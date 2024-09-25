import "dart:async";
import "package:flutter/material.dart";
import "package:lottie/lottie.dart";

import "../../utils/appconstant.dart";

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    //double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppConstant.appSecondoryColor,
      body: Container(
        width: screenWidth,
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Lottie.asset('assets/images/splash-icon.json'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              width: screenWidth,
              alignment: Alignment.center,
              child: Text(AppConstant.appPowerdBy,
                  style: const TextStyle(
                      color: AppConstant.appTextColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
