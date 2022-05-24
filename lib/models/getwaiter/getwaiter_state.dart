import 'package:wait4me/models/getwaiter/getwaiter_model.dart';

class GetWaiterState {
  bool? loading;
  dynamic error;
  GetWaiterModel? success;

  GetWaiterState({required this.loading, this.error, required this.success});

  factory GetWaiterState.initial() => GetWaiterState(loading: false, error: null, success: null);
}