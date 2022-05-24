

import 'package:wait4me/models/register/register_model.dart';

class RegisterState {
  bool? loading;
  dynamic error;
  RegisterModel? registered;


  RegisterState({
    this.loading,
    this.error,
    required this.registered,

  });
  factory RegisterState.initial() => RegisterState(
    loading: false,
     error: null,
     registered:null,
  );
}