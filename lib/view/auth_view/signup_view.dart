import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'package:snap_shop/routes/app_routes.dart';

import '../../utils/appconstant.dart';
import '../../utils/utils.dart';
import '../../view_model/auth_view_model/auth_view_model.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  //text editing controller

  TextEditingController userNameController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userCityController = TextEditingController();

  final FocusNode _userNameFocusNode = FocusNode();
  final FocusNode _userEmailFocusNode = FocusNode();
  final FocusNode _userPasswordFocusNode = FocusNode();
  final FocusNode _userPhoneFocusNode = FocusNode();
  final FocusNode _userCityFocusNode = FocusNode();

  @override
  void dispose() {
    userNameController.dispose();
    userEmailController.dispose();
    userPasswordController.dispose();
    userPhoneController.dispose();
    userCityController.dispose();

    _userNameFocusNode.dispose();
    _userEmailFocusNode.dispose();
    _userPasswordFocusNode.dispose();
    _userPhoneFocusNode.dispose();
    _userCityFocusNode.dispose();

    super.dispose();
  }

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
            title: const Text('Sign UP'),
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
                      controller: userNameController,
                      cursorColor: AppConstant.appSecondoryColor,
                      keyboardType: TextInputType.name,
                      focusNode: _userNameFocusNode,
                      onEditingComplete: () {
                        Utils.fieldFocusChange(
                            context, _userNameFocusNode, _userPhoneFocusNode);
                      },
                      textInputAction: TextInputAction.next,
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
                        controller: userPhoneController,
                        cursorColor: AppConstant.appSecondoryColor,
                        keyboardType: TextInputType.number,
                        focusNode: _userPhoneFocusNode,
                        onEditingComplete: () {
                          Utils.fieldFocusChange(
                              context, _userPhoneFocusNode, _userCityFocusNode);
                        },
                        textInputAction: TextInputAction.next,
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
                      controller: userCityController,
                      cursorColor: AppConstant.appSecondoryColor,
                      keyboardType: TextInputType.streetAddress,
                      focusNode: _userCityFocusNode,
                      onEditingComplete: () {
                        Utils.fieldFocusChange(
                            context, _userCityFocusNode, _userEmailFocusNode);
                      },
                      textInputAction: TextInputAction.next,
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
                      controller: userEmailController,
                      cursorColor: AppConstant.appSecondoryColor,
                      keyboardType: TextInputType.emailAddress,
                      focusNode: _userEmailFocusNode,
                      onEditingComplete: () {
                        Utils.fieldFocusChange(context, _userEmailFocusNode,
                            _userPasswordFocusNode);
                      },
                      textInputAction: TextInputAction.next,
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
                      controller: userPasswordController,
                      cursorColor: AppConstant.appSecondoryColor,
                      keyboardType: TextInputType.visiblePassword,
                      focusNode: _userPasswordFocusNode,
                      textInputAction: TextInputAction.done,
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
                      onPressed: () async {
                        // Get form inputs
                        String fullName = userNameController.text.trim();
                        String userEmail = userEmailController.text.trim();
                        String userPassword =
                            userPasswordController.text.trim();
                        String userPhone = userPhoneController.text.trim();
                        String userCity = userCityController.text.trim();

                        // Obtain the AuthViewModel instance from the provider
                        var authViewModel =
                            Provider.of<AuthViewModel>(context, listen: false);

                        //checks if empty

                        if (fullName.isEmpty) {
                          Utils.flushBarErrorMessage(
                            backgroundColor: AppConstant.appSecondoryColor,
                            iconColor: AppConstant.appTextColor,
                            textColor: AppConstant.appTextColor,
                            'Please Enter Full Name!',
                            context,
                          );
                          return;
                        } else if (userPhone.isEmpty) {
                          Utils.flushBarErrorMessage(
                            backgroundColor: AppConstant.appSecondoryColor,
                            iconColor: AppConstant.appTextColor,
                            textColor: AppConstant.appTextColor,
                            'Please Enter Phone Number!',
                            context,
                          );
                          return;
                        } else if (userCity.isEmpty) {
                          Utils.flushBarErrorMessage(
                            backgroundColor: AppConstant.appSecondoryColor,
                            iconColor: AppConstant.appTextColor,
                            textColor: AppConstant.appTextColor,
                            'Please Enter City!',
                            context,
                          );
                          return;
                        } else if (userEmail.isEmpty) {
                          Utils.flushBarErrorMessage(
                            backgroundColor: AppConstant.appSecondoryColor,
                            iconColor: AppConstant.appTextColor,
                            textColor: AppConstant.appTextColor,
                            'Please Enter email!',
                            context,
                          );
                        } else if (userPassword.isEmpty) {
                          Utils.flushBarErrorMessage(
                            backgroundColor: AppConstant.appSecondoryColor,
                            iconColor: AppConstant.appTextColor,
                            textColor: AppConstant.appTextColor,
                            'Please Enter Password!',
                            context,
                          );
                          return;
                        }

                        // Prepare data map
                        Map<String, dynamic> data = {
                          'fullName': fullName,
                          'email': userEmail,
                          'phone': userPhone,
                          'city': userCity,
                          'password': userPassword,
                        };

                        // Call sign-up API in AuthViewModel
                        authViewModel.signUpApi(data, context).then((success) {
                          if (success) {
                            // Navigate to the next screen if sign-up is successful
                            Navigator.pushReplacementNamed(
                                context, AppRoutes.signin);
                          }
                        });
                      },
                      child: const Text(
                        'Sign Up',
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
