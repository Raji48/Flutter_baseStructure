import 'package:wait4me/models/viewservicerequest/viewservicerequest_model.dart';

class ViewServiceRequestState {
  bool? loading;
  dynamic error;
  ViewServiceRequestModel? success;

  ViewServiceRequestState({required this.loading, this.error, required this.success});

  factory ViewServiceRequestState.initial() => ViewServiceRequestState(loading: false, error: null, success: null);
}