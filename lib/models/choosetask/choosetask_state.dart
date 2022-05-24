import 'package:wait4me/models/choosetask/choosetask_model.dart';

class ChooseTaskState {
  bool? loading;
  dynamic error;
  ChooseTaskModel? success;

  ChooseTaskState({required this.loading, this.error, required this.success});

  factory ChooseTaskState.initial() => ChooseTaskState(loading: false, error: null, success: null);
}