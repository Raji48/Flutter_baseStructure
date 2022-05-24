
import 'package:wait4me/models/editprofle/editprofile_model.dart';

class EditprofileState {
  bool? loading;
  dynamic error;
  EditprofileModel? editprofile;


  EditprofileState({
    this.loading,
    this.error,
    required this.editprofile,

  });
  factory EditprofileState.initial() => EditprofileState(
    loading: false,
    error: null,
    editprofile:null,
  );
}