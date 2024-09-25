import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:snap_shop/routes/app_routes.dart';

import '../../utils/appconstant.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  //text editing controller

  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController userPhone = TextEditingController();
  TextEditingController userCity = TextEditingController();

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
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight / 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: userName,
                      cursorColor: AppConstant.appSecondoryColor,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: 'Full Name',
                          prefixIcon: const Icon(Icons.person),
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
                        controller: userPhone,
                        cursorColor: AppConstant.appSecondoryColor,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'Phone Number',
                            prefixIcon: const Icon(Icons.phone),
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
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: userCity,
                      cursorColor: AppConstant.appSecondoryColor,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                          hintText: 'City',
                          prefixIcon: const Icon(Icons.location_on),
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
                      controller: userEmail,
                      cursorColor: AppConstant.appSecondoryColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Email',
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
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          prefixIconColor: AppConstant.appSecondoryColor,
                          contentPadding:
                              const EdgeInsets.only(top: 2.0, left: 8.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.restPassword);
                    },
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
                      "Already have an account? ",
                      style: TextStyle(color: AppConstant.appSecondoryColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signin);
                      },
                      child: const Text(
                        "Login",
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
        );
      },
    );
  }
}
