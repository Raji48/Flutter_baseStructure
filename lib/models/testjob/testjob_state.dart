
import 'package:wait4me/models/testjob/testjob_model.dart';

class TestjobState {
  bool? loading;
  dynamic error;
  TestjobModel? testjob;

  TestjobState({
    this.loading,
    this.error,
    required this.testjob,
  });
  factory TestjobState.initial() => TestjobState(
    loading: false,
    error: null,
    testjob: null,
  );
}