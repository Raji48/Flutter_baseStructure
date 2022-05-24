
import 'package:wait4me/models/viewrequests/viewrequest_model.dart';

class ViewRequestState {
  bool? loading;
  dynamic error;
  ViewRequestModel? viewrequest;

  ViewRequestState({
    this.loading,
    this.error,
    required this.viewrequest
  });
  factory ViewRequestState.initial() => ViewRequestState(
    loading: false,
    error: null,
    viewrequest: null,
  );
}