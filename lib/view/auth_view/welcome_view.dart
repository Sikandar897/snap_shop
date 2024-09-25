import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../utils/appconstant.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        foregroundColor: AppConstant.appTextColor,
        backgroundColor: AppConstant.appSecondoryColor,
        // title: const Text("Welcome to MysticMall",
        // style: TextStyle(
        //   fontWeight: FontWeight.bold,
        //   fontSize: 25,
        // ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset('assets/images/splash-icon.json'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 14.0),
                    child: const Text(
                      "Happy shopping",
                      style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appMainColor),
                    )),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Material(
                child: Container(
              decoration: BoxDecoration(
                  color: AppConstant.appSecondoryColor,
                  borderRadius: BorderRadius.circular(21.0)),
              width: screenWidth * 0.7,
              height: screenHeight * 0.08,
              child: TextButton.icon(
                  onPressed: () {
                    //todo sigin in screen
                  },
                  icon: const FaIcon(FontAwesomeIcons.google,
                      color: AppConstant.appTextColor),
                  label: const Text(
                    'Sign in with google',
                    style: TextStyle(color: AppConstant.appTextColor),
                  )),
            )),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Material(
                child: Container(
              decoration: BoxDecoration(
                  color: AppConstant.appSecondoryColor,
                  borderRadius: BorderRadius.circular(21.0)),
              width: screenWidth * 0.7,
              height: screenHeight * 0.08,
              child: TextButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(Icons.email,
                      size: 28, color: AppConstant.appTextColor),
                  label: const Text(
                    'Sign in with email',
                    style: TextStyle(color: AppConstant.appTextColor),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
