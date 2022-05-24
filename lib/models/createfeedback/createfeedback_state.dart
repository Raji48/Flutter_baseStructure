
import 'package:wait4me/models/createfeedback/createfeedback_model.dart';

class CreateFeedbackState {
  bool? loading;
  dynamic error;
  CreateFeedbackModel? createfeedback;

  CreateFeedbackState({
    this.loading,
    this.error,
    required this.createfeedback,
  });
  factory CreateFeedbackState.initial() => CreateFeedbackState(
    loading: false,
    error: null,
    createfeedback: null,
  );
}