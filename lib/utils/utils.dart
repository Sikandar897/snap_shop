import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appconstant.dart';

class Utils {
  // we will use this function to shift focus from one text field to another text field
  // we are using to avoid duplications of code
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  /* generic toast message imported from toast package */
  // we will utilise this for showing errors or success messages
  static void toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppConstant.appSecondoryColor,
      textColor: AppConstant.appTextColor,
    );
  }

  /* imported this from flush bar package */
  // we will utilise this for showing errors or success messages
  static void flushBarErrorMessage(
    String message,
    BuildContext context, {
    required Color backgroundColor,
    required Color iconColor,
    required Color textColor,
  }) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        messageText: Text(
          message,
          style: GoogleFonts.inter(
            color: textColor,
            fontSize: 13,
          ),
        ),
        duration: const Duration(seconds: 3),
        borderRadius: BorderRadius.circular(8),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: backgroundColor,
        reverseAnimationCurve: Curves.easeInOut,
        icon: Icon(
          Icons.error,
          size: 28,
          color: iconColor,
        ),
        //  titleColor: iconColor,
      )..show(context),
    );
  }

  //imported this from flush bar package
  // we will utilise this for showing errors or success messages
  static void flushBarMessage(
    String message,
    BuildContext context,
  ) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        messageText: Text(
          message,
          style: GoogleFonts.inter(
            color: AppConstant.appTextColor,
            fontSize: 13,
          ),
        ),
        duration: const Duration(seconds: 3),
        borderRadius: BorderRadius.circular(8),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: AppConstant.appMainColor,
        reverseAnimationCurve: Curves.easeInOut,
        // icon: const Icon(Icons.error, size: 28, color: AppConstant.appTextColor3),
      )..show(context),
    );
  }

  // we will utilise this for showing errors or success messages
  static void snackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }
}
