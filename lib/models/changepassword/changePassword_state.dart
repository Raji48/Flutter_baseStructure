import 'package:wait4me/models/changepassword/changePassword_model.dart';

class ChangePasswordState {
  bool? loading;
  dynamic error;
  ChangePasswordModel? success;

  ChangePasswordState({required this.loading, this.error, required this.success});

  factory ChangePasswordState.initial() => ChangePasswordState(loading: false, error: null, success: null);
}
