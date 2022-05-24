
import 'package:wait4me/models/getreviews/getreviews_model.dart';

class GetReviewState {
  bool? loading;
  dynamic error;
  GetReviewModel? getreview;

  GetReviewState({
    this.loading,
    this.error,
    required this.getreview,
  });
  factory GetReviewState.initial() => GetReviewState(
    loading: false,
    error: null,
    getreview: null,
  );
}