import 'package:wait4me/models/login/login_model.dart';

class LoginState {
  bool? loading;
  dynamic error;
  Login_Model? success;

  LoginState({required this.loading, this.error, required this.success});

  factory LoginState.initial() => LoginState(loading: false, error: null, success: null);
}
