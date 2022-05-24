import 'package:wait4me/models/forgetpassword/forgetPassword_model.dart';

class ForgetPasswordState {
  bool? loading;
  dynamic error;
  ForgetPasswordModel? success;

  ForgetPasswordState({required this.loading, this.error, required this.success});

  factory ForgetPasswordState.initial() => ForgetPasswordState(loading: false, error: null, success: null);
}
