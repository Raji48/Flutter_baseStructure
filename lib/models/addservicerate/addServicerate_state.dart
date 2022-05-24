import 'package:wait4me/models/addservicerate/addServicerate_model.dart';

class AddServicerateState {
  bool? loading;
  dynamic error;
  AddServicerateModel? success;

  AddServicerateState({required this.loading, this.error, required this.success});

  factory AddServicerateState.initial() => AddServicerateState(loading: false, error: null, success: null);
}