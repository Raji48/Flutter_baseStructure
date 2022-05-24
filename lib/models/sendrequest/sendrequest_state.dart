import 'package:wait4me/models/sendrequest/sendrequest_model.dart';

class SendRequestState {
  bool? loading;
  dynamic error;
  SendRequestModel? success;

  SendRequestState({required this.loading, this.error, required this.success});

  factory SendRequestState.initial() => SendRequestState(loading: false, error: null, success: null);
}