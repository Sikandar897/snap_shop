// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:lottie/lottie.dart';

import '../../utils/appconstant.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  //text editing controller

  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return KeyboardVisibilityBuilder(
      builder: (context, bool isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            foregroundColor: AppConstant.appTextColor,
            centerTitle: true,
            backgroundColor: AppConstant.appSecondoryColor,
            title: const Text('Sign In'),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              child: Column(
                children: [
                  isKeyboardVisible
                      ? const Text('Welcome to SnapShop')
                      : Column(
                          children: [
                            Lottie.asset('assets/images/splash-icon.json')
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
                      child: TextField(
                        controller: userEmail,
                        cursorColor: AppConstant.appSecondoryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'email',
                            prefixIcon: const Icon(Icons.email),
                            prefixIconColor: AppConstant.appSecondoryColor,
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: screenWidth,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: userPassword,
                          cursorColor: AppConstant.appSecondoryColor,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              hintText: 'password',
                              prefixIcon: const Icon(Icons.lock),
                              prefixIconColor: AppConstant.appSecondoryColor,
                              suffix: GestureDetector(
                                  onTap: () {},
                                  child: const Icon(Icons.visibility)),
                              contentPadding:
                                  const EdgeInsets.only(top: 2.0, left: 8.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text('Forget password?',
                          style: TextStyle(
                              color: AppConstant.appSecondoryColor,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 20,
                  ),
                  Material(
                      child: Container(
                    decoration: BoxDecoration(
                        color: AppConstant.appSecondoryColor,
                        borderRadius: BorderRadius.circular(21.0)),
                    width: screenWidth / 2,
                    height: screenHeight / 18,
                    child: TextButton(
                        onPressed: () async {},
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: AppConstant.appTextColor),
                        )),
                  )),
                  SizedBox(
                    height: screenHeight / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(color: AppConstant.appSecondoryColor),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: AppConstant.appSecondoryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
