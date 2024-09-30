import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../repository/authRepository/auth_repository.dart';
import '../../utils/appconstant.dart';
import '../../utils/utils.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository _myRepo = AuthRepository();
  bool _loading = false;
  bool get loading => _loading;

  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  /* signup api method */
  Future<bool> signUpApi(dynamic data, BuildContext context) async {
    setLoading(true);
    try {
      final response = await _myRepo.signupApi(data);

      // Check for success (assumes response is structured with a success flag)
      if (response.success) {
        if (context.mounted) {
          Utils.flushBarMessage('Signup Successful, please login!', context);
        }
        setLoading(false);
        return true; // Return true indicating success
      } else {
        throw Exception('Signup failed: ${response.message}');
      }
    } catch (error) {
      setLoading(false);
      if (context.mounted) {
        Utils.flushBarErrorMessage(
            backgroundColor: AppConstant.appSecondoryColor,
            iconColor: AppConstant.appTextColor,
            textColor: AppConstant.appTextColor,
            error.toString(),
            context);
      }
      if (kDebugMode) {
        print("Error in signUpApi: $error");
      }
      return false; // Return false indicating failure
    }
  }
}
