import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:lottie/lottie.dart';

import '../../utils/appconstant.dart';

class RestPasswordView extends StatefulWidget {
  const RestPasswordView({super.key});

  @override
  State<RestPasswordView> createState() => _RestPasswordViewState();
}

class _RestPasswordViewState extends State<RestPasswordView> {
  TextEditingController userEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appSecondoryColor,
          foregroundColor: AppConstant.appTextColor,
          centerTitle: true,
          title: const Text(
            "Forget Password",
          ),
        ),
        body: Container(
          child: Column(
            children: [
              isKeyboardVisible
                  ? const Text("Welcome to my app")
                  : Column(
                      children: [
                        Lottie.asset('assets/images/splash-icon.json'),
                      ],
                    ),
              SizedBox(
                height: screenHeight / 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: userEmail,
                    cursorColor: AppConstant.appSecondoryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.email),
                      prefixIconColor: AppConstant.appSecondoryColor,
                      contentPadding:
                          const EdgeInsets.only(top: 2.0, left: 8.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 20,
              ),
              Material(
                child: Container(
                  width: screenWidth / 2,
                  height: screenHeight / 18,
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondoryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    child: const Text(
                      "Forget",
                      style: TextStyle(color: AppConstant.appTextColor),
                    ),
                    onPressed: () async {},
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
